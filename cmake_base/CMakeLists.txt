# 注意：CMakeLists中的系统变量通常都是字母大写

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


