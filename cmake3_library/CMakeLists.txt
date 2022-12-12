# 注意：CMakeLists中的系统变量通常都是字母大写

# 项目名
project(HELLO)
# # 头文件所在目录
include_directories(${PROJECT_SOURCE_DIR}/include/)
# 设置所需源码文件
set(src_List src/hello.cpp)
# 设置生成链接库的输出目录
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/build/bin)
# 生成动态库libhello.so
# 涉及源码目录为变量src_List的值
add_library(hello SHARED ${src_List})

# 安装头文件
# CMAKE_INSTALL_PREFIX 默认 /usr/local/
# DIRECTORY之后
# 若写include，会将整个include文件夹拷贝到 /usr/local/include/下
# 效果/usr/local/include/include/hello.h
# 若写include/,会将nclude文件夹下的内容拷贝到 /usr/local/include/下
# 效果/usr/local/include/hello.h
install(DIRECTORY include/ DESTINATION ${CMAKE_INSTALL_PREFIX}/include/)
# 安装动态库
install(TARGETS hello DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/)


# 相当于g++命令
# g++ TestLibrary.cpp -fPIC -shared -o libTestLibrary.so