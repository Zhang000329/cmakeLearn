cmake_minimum_required(VERSION 3.15)

project(test)

add_definitions(-DDEBUG)
aux_source_directory(${PROJECT_SOURCE_DIR} SRC)
add_executable(app ${SRC})