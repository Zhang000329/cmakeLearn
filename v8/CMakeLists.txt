cmake_minimum_required(VERSION 3.15)
project(test)
#set(SRC add.c div.c main.c mult.c sub.c)
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR} SRC)

message("===============")
message(STATUS "${SRC}")
list(REMOVE_ITEM SRC ${PROJECT_SOURCE_DIR}/main.c)
message(STATUS "${SRC}")
message("===============")
set(tmp hello world)
set(tmp1 ${tmp} ${SRC})
message(STATUS "${tmp1}")
list(APPEND tmp "....." ${SRC})
message(STATUS "${tmp}")
include_directories(${PROJECT_SOURCE_DIR}/include)
link_directories(${CMAKE_CURRENT_SOURCE_DIR}/lib)
set(CMAKE_CXX_STANDARD 11)

add_executable(app ${SRC})
target_link_libraries(app calc)
