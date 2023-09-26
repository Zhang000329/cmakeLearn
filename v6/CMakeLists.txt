cmake_minimum_required(VERSION 3.15)
project(test)
#set(SRC add.c div.c main.c mult.c sub.c)
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR} SRC)

include_directories(${PROJECT_SOURCE_DIR}/include)
link_libraries(calc)
link_directories(${CMAKE_CURRENT_SOURCE_DIR}/static)
set(CMAKE_CXX_STANDARD 11)

add_executable(app ${SRC})