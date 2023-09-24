cmake_minimum_required(VERSION 3.15)
project(test)
#set(SRC add.c div.c main.c mult.c sub.c)
# aux_source_directory(${PROJECT_SOURCE_DIR} SRC)
file(GLOB SRC ${CMAKE_CURRENT_SOURCE_DIR}/*.c)
set(CMAKE_CXX_STANDARD 11)

add_executable(app ${SRC})