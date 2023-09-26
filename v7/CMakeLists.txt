cmake_minimum_required(VERSION 3.15)
project(test)
#set(SRC add.c div.c main.c mult.c sub.c)
aux_source_directory(${CMAKE_CURRENT_SOURCE_DIR} SRC)

include_directories(${PROJECT_SOURCE_DIR}/include)
link_directories(${CMAKE_CURRENT_SOURCE_DIR}/lib)
set(CMAKE_CXX_STANDARD 11)

add_executable(app ${SRC})
target_link_libraries(app calc)
message("XXXXXXXXXXXXXXXXXX")
# 输出一般日志信息
message(STATUS "source path: ${PROJECT_SOURCE_DIR}")
# 输出警告信息
message(WARNING "source path: ${PROJECT_SOURCE_DIR}")
# 输出错误信息
message(FATAL_ERROR "source path: ${PROJECT_SOURCE_DIR}")
