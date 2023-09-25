cmake_minimum_required(VERSION 3.15)
project(test)
#set(SRC add.c div.c main.c mult.c sub.c)
aux_source_directory(${PROJECT_SOURCE_DIR}/src SRC)

include_directories(${PROJECT_SOURCE_DIR}/include)
# 编译动态库
add_library(calc SHARED ${SRC})

# 编译静态库
# add_library(calc STATIC ${SRC})

set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)
set(CMAKE_CXX_STANDARD 11)

add_executable(app ${SRC})