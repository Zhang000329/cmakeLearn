cmake_minimum_required(VERSION 3.15)
project(test)
set(SRC add.c div.c main.c mult.c sub.c)
set(CMAKE_CXX_STANDARD 11)
set(EXECUTABLE_OUTPUT_PATH /Users/zhangyujun/vscode/ptr/cmakeLearn/v2/output)
add_executable(app ${SRC})