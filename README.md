## CMAKE LEARN
## 1.只有源文件

### 1.1共处一室

1. 测试文件

```cpp
#include <stdio.h>
#include "head.h"

int add(int a, int b)
{
    return a+b;
}
#include <stdio.h>
#include "head.h"

double divide(int a, int b)
{
    return (double)a/b;
}
#ifndef _HEAD_H
#define _HEAD_H
// 加法
int add(int a, int b);
// 减法
int subtract(int a, int b);
// 乘法
int multiply(int a, int b);
// 除法
double divide(int a, int b);
#endif
#include <stdio.h>
#include "head.h"

int main()
{
    int a = 20;
    int b = 12;
    printf("a = %d, b = %d\n", a, b);
    printf("a + b = %d\n", add(a, b));
    printf("a - b = %d\n", subtract(a, b));
    printf("a * b = %d\n", multiply(a, b));
    printf("a / b = %f\n", divide(a, b));
    return 0;
}
#include <stdio.h>
#include "head.h"

int multiply(int a, int b)
{
    return a*b;
}
#include <stdio.h>
#include "head.h"

// 你好
int subtract(int a, int b)
{
    return a-b;
}
```

1. 编写CMakeLists.txt文件

```cmake
cmake_minimum_required(VERSION 3.15)
project(test)

add_executable(app add.c div.c main.c mult.c sub.c)
```

- cmake_minimum_required 制定最小版本，如果不指定会有警告
- project 设置项目名称
- add_executable 定义工程生成的可执行程序

```cmake
add_executable(可执行程序名 源文件名称)
```

1. cmake 命令

为了保证后续的操作方便，我们一般会创建一个build目录，来存储生成出来的文件

```shell
cd build
cmake ..
make 
./app
```

总体操作步骤如上

### 1.2优化

1. 将编译的源文件抽离出来

```cmake
set(SRC add.c div.c main.c mult.c sub.c)

# SET 指令的语法是：
# [] 中的参数为可选项, 如不需要可以不写
SET(VAR [VALUE] [CACHE TYPE DOCSTRING [FORCE]])
```

- **VAR：**变量名
- **VALUE：**变量值

1. 设置编译标准

两种方式

在 CMakeLists.txt 中通过 set 命令指定

```cmake
#增加-std=c++11
set(CMAKE_CXX_STANDARD 11)
#增加-std=c++14
set(CMAKE_CXX_STANDARD 14)
#增加-std=c++17
set(CMAKE_CXX_STANDARD 17)
```

在执行 cmake 命令的时候指定出这个宏的值

```shell
#增加-std=c++11
cmake CMakeLists.txt文件路径 -DCMAKE_CXX_STANDARD=11
#增加-std=c++14
cmake CMakeLists.txt文件路径 -DCMAKE_CXX_STANDARD=14
#增加-std=c++17
cmake CMakeLists.txt文件路径 -DCMAKE_CXX_STANDARD=17
```

1. 设置输出路径

路径尽量都指定为绝对路径

```cmake
set(EXECUTABLE_OUTPUT_PATH /Users/zhangyujun/vscode/ptr/cmakeLearn/v2/output)
```

### 1.3搜索文件

如果一个项目里边的源文件很多，在编写CMakeLists.txt文件的时候不可能将项目目录的各个文件一一罗列出来，这样太麻烦也不现实。所以，在CMake中为我们提供了搜索文件的命令，可以使用`aux_source_directory`命令或者`file`命令

1. `aux_source_directory`

只需要写出路径即可，会自动搜索

```cmake
aux_source_directory(< dir > < variable >)
```

- **dir**：要搜索的目录
- **variable**：将从dir目录下搜索到的源文件列表存储到该变量中

```cmake
cmake_minimum_required(VERSION 3.0)
project(CALC)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
# 搜索 src 目录下的源文件
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR}/src SRC_LIST)
add_executable(app  ${SRC_LIST})
```

两个宏${CMAKE_CURRENT_SOURCE_DIR} 和${CMAKE_CURRENT_SOURCE_DIR} 表示CMakeLists.txt文件所在位置的内容

1. `file`

```cmake
file(GLOB/GLOB_RECURSE 变量名 要搜索的文件路径和文件类型)
```

- **GLOB**: 将指定目录下搜索到的满足条件的所有文件名生成一个列表，并将其存储到变量中。
- **GLOB_RECURSE**：递归搜索指定目录，将搜索到的满足条件的文件名生成一个列表，并将其存储到变量中。

```cmake
cmake_minimum_required(VERSION 3.15)
project(test)
file(GLOB SRC ${CMAKE_CURRENT_SOURCE_DIR}/*.c)
set(CMAKE_CXX_STANDARD 11)

add_executable(app ${SRC})
```

 **使用file的使用一定要加后面需要检索文件后缀**

### 1.4包含头文件

将.h 和 .cpp 文件分别放入include和src目录下边，我们需要将头文件的目录位置引入，才能让文件进行正确的编译

```cmake
include_directories(headpath)
cmake_minimum_required(VERSION 3.15)
project(test)

aux_source_directory(${PROJECT_SOURCE_DIR}/src SRC)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)
set(CMAKE_CXX_STANDARD 11)

add_executable(app ${SRC})
```

只需要引入头文件的目录位置即可

## 2.制作库文件

1. 静态库

```
add_library(库名称 STATIC 源文件1 [源文件2] ..)
# 编译静态库
add_library(calc STATIC ${SRC})
```

1. 动态库

```
add_library(库名称 SHARED 源文件1 [源文件2] ..)
# 编译动态库
add_library(calcs SHARED ${SRC})
```

1. 设置库文件存储位置

使用`**LIBRARY_OUTPUT_PATH**`，这个宏对应静态库文件和动态库文件都适用

```cmake
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)
```

### 2.1链接静态库

```cmake
link_libraries(<static lib> [<static lib>...])
```

- 参数1：指定出要链接的静态库的名字可以是全名 libxxx.a 也可以是掐头（lib）去尾（.a）之后的名字 xxx
- 参数2-N：要链接的其它静态库的名字

如果是自己自定义的静态库文件，我们需要指定静态库的目录

```cmake
link_directories(<lib path>)
cmake_minimum_required(VERSION 3.15)
project(test)
#set(SRC add.c div.c main.c mult.c sub.c)
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR} SRC)

include_directories(${PROJECT_SOURCE_DIR}/include)
link_libraries(calc)
link_directories(${CMAKE_CURRENT_SOURCE_DIR}/static)
set(CMAKE_CXX_STANDARD 11)

add_executable(app ${SRC})
```

静态库是和可执行程序一起编译的

### 2.2链接动态库

动态库一般不会放入可执行文件中，一般命令放在最后编写

```cmake
target_link_libraries(
    <target> 
    <PRIVATE|PUBLIC|INTERFACE> <item>... 
    [<PRIVATE|PUBLIC|INTERFACE> <item>...]...)
```

- **动态库的链接具有传递性**，如果动态库 A 链接了动态库B、C，动态库D链接了动态库A，此时动态库D相当于也链接了动态库B、C，并可以使用动态库B、C中定义的方法。
- PUBLIC：在public后面的库会被Link到前面的target中，并且里面的符号也会被导出，提供给第三方使用。
- PRIVATE：在private后面的库仅被link到前面的target中，并且终结掉，第三方不能感知你调了啥库
- INTERFACE：在interface后面引入的库不会被链接到前面的target中，只会导出符号。

如果动态库是自己制作的，我们需要指定库文件的路径

```cmake
link_directories(<lib path>)
cmake_minimum_required(VERSION 3.15)
project(test)
#set(SRC add.c div.c main.c mult.c sub.c)
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR} SRC)

include_directories(${PROJECT_SOURCE_DIR}/include)
link_directories(${CMAKE_CURRENT_SOURCE_DIR}/lib)
set(CMAKE_CXX_STANDARD 11)

add_executable(app ${SRC})
target_link_libraries(app calc)
```

**target_link_libraries** **这段要放到最后**

## 3.日志

```cmake
message([STATUS|WARNING|AUTHOR_WARNING|FATAL_ERROR|SEND_ERROR] "message to display" ...)
```

- (无) ：重要消息
- STATUS ：非重要消息
- WARNING：CMake 警告, 会继续执行
- AUTHOR_WARNING：CMake 警告 (dev), 会继续执行
- SEND_ERROR：CMake 错误, 继续执行，但是会跳过生成的步骤
- FATAL_ERROR：CMake 错误, 终止所有处理过程

如果为None的话，则默认是STATUS

```cmake
message("XXXXXXXXXXXXXXXXXX")
# 输出一般日志信息
message(STATUS "source path: ${PROJECT_SOURCE_DIR}")
# 输出警告信息
message(WARNING "source path: ${PROJECT_SOURCE_DIR}")
# 输出错误信息
message(FATAL_ERROR "source path: ${PROJECT_SOURCE_DIR}")
```

## 4.字符串操作

### 4.1字符串拼接

```cmake
set(变量名1 ${变量名1} ${变量名2} ...)
set(tmp hello world)
set(tmp1 ${tmp} ${SRC})
```

### 4.2字符串移除

```cmake
list(REMOVE_ITEM <list> <value> [<value> ...])
message("===============")
message(STATUS "${SRC}")
list(REMOVE_ITEM SRC ${PROJECT_SOURCE_DIR}/main.c)
message(STATUS "${SRC}")
message("===============")
```

### 4.3list拼接

```cmake
list(APPEND <list> [<element> ...])
message(STATUS "${tmp1}")
list(APPEND tmp "....." ${SRC})
message(STATUS "${tmp}")
```

## 5.定义宏

```cmake
add_definitions(-D宏名称)
```

**test.c**

```cpp
#include <stdio.h>
#define NUMBER  3

int main()
{
    int a = 10;
    #ifdef DEBUG
    printf("我是一个程序猿, 我不会爬树...\n");
    #endif
    for(int i=0; i<NUMBER; ++i)
        {
            printf("hello, GCC!!!\n");
        }
    return 0;
}
```

CMakeLists.txt

```cmake
cmake_minimum_required(VERSION 3.15)

project(test)

add_definitions(-DDEBUG)
aux_source_directory(${PROJECT_SOURCE_DIR} SRC)
add_executable(app ${SRC})
```

### 5.1预定义宏

| 宏                       | 功能                                                         |
| ------------------------ | ------------------------------------------------------------ |
| PROJECT_SOURCE_DIR       | 使用cmake命令后紧跟的目录，一般是工程的根目录                |
| PROJECT_BINARY_DIR       | 执行cmake命令的目录                                          |
| CMAKE_CURRENT_SOURCE_DIR | 当前处理的CMakeLists.txt所在的路径                           |
| CMAKE_CURRENT_BINARY_DIR | target 编译目录                                              |
| EXECUTABLE_OUTPUT_PATH   | 重新定义目标二进制可执行文件的存放位置                       |
| LIBRARY_OUTPUT_PATH      | 重新定义目标链接库文件的存放位置                             |
| PROJECT_NAME             | 返回通过PROJECT指令定义的项目名称                            |
| CMAKE_BINARY_DIR         | 项目实际构建路径，假设在build目录进行的构建，那么得到的就是这个目录的路径 |