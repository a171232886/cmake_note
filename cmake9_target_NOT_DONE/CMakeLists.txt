cmake_minimum_required(VERSION 3.5)

# 项目名
project(main)
# 头文件所在目录
include_directories(${PROJECT_SOURCE_DIR}/include/)
# # 设置所需源码文件
# set(src_List src/_zzz.cpp)
# # 设置生成链接库的输出目录
# set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/build/lib)
# # 生成动态库libhello.so
# # 涉及源码目录为变量src_List的值
# add_library(zzz SHARED ${src_List})



add_executable(main src/main.cpp)
target_link_libraries(main ${PROJECT_SOURCE_DIR}/libhello.so)