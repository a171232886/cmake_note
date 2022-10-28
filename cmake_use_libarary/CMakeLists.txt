# 注意：CMakeLists中的系统变量通常都是字母大写

# 项目名
project(MAIN)
# 设置所需源码文件
set(src_List src/main.cpp)

# 添加所需头文件目录
include_directories(/usr/local/include/hello)


# 设置生成可执行文件的目录
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/build/bin)

# 生成可执行文件名为main
# 涉及源码目录为变量src_List的值
add_executable(main ${src_List})

# 添加所需链接目录
link_directories(/usr/local/lib)
# 添加所使用的动态链接库
target_link_libraries(main libhello.so)


# 指定include目录和link文件，相当于在项目根目录下
# g++ ../src/main.cpp -o main -I /usr/local/include/hello -lhello

