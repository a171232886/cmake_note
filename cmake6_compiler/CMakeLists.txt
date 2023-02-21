# 参考：https://blog.csdn.net/m0_51551385/article/details/125083575

cmake_minimum_required(VERSION 3.5)
project(main)

# 编译器选项设置的两种方式
# set(CMAKE_CXX_FLAGS "-g") 此种方式只针对C++编译器
# add_compile_options(-g) 此种方式针对所有编译器
set(CMAKE_CXX_FLAGS "-std=c++11 -Wall -g")
add_compile_options(-pthread -O0)


# g++常见参数
# -std=c++11    使用C++11
# -g            生成调试器可用的可执行文件
# -ggdb         生成专用于gdb调试的可执行文件
# -Wall         显示所有警告信息
# -O0           优化等级0，禁止编译器优化，通常在DEBUG中
# -O3           优化等级3，通常在RELEASE
# -pthread      支持多线程

add_executable(main src/main.cpp)