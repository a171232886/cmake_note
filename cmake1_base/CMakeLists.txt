# 注意：CMakeLists中的系统变量通常都是字母大写

# 可写可不写的cmake最低版本声明
cmake_minimum_required(VERSION 3.5)

# 项目名
project(HELLO)
# # 头文件所在目录
include_directories(${PROJECT_SOURCE_DIR}/include/)
# 设置所需源码文件
set(src_List src/hello.cpp)
# 设置生成可执行文件的目录
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/build/bin)
# 生成可执行文件名为hello
# 涉及源码目录为变量src_List的值
add_executable(hello ${src_List})


# option(test 1)
# if (test EQUAL 1)
#     message(STATUS "IF")
# elseif(test EQUAL 2)
#     message(STATUS "ELSEIF")
# else(test EQUAL 3)
#     message(STATUS "ELSE")
# endif(test EQUAL 4)

