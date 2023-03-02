cmake_minimum_required(VERSION 3.5)
project(main)

# 设置预处理宏定义
# add_compile_definitions(VAR)
# 在cpp中 #ifdef VAR 为真

message(STATUS "CMake版本: ${CMAKE_VERSION}")

if(PRETEST)
    # 添加预定义宏TEST

    # 早期版本add_definitions(-DVAR)，add_definitions(-DVAR=value)
    # add_definitions(-DTEST=on)

    # v3.12之后：add_compile_definitions(VAR)， add_compile_definitions(VAR=value)
    add_compile_definitions(TEST)
    add_compile_definitions(VAR=4)
endif()

add_executable(main src/main.cpp)
