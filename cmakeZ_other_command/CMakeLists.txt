cmake_minimum_required(VERSION 3.5)

# list 
# cmake中的列表，包含的功能不亚于python中的list
# 这里只展示最常用的append
set(src_list a.cpp b.cpp)
set(src_list2 e.cpp f.cpp)
# 添加单个项目
list(APPEND src_list c.cpp d.cpp) 
# 添加整个列表
list(APPEND src_list ${src_list2})
message(${src_list})


# file
set(src_list a.cpp b.cpp)
# 下行命令是将src文件夹下所有cpp文件存为list到src_list
# 注意是对src_list原内容进行覆盖，而不是添加
file(GLOB src_list "src/*.cpp")
message(${src_list})

# 复制文件
file(COPY src/c.cpp DESTINATION ${CMAKE_SOURCE_DIR}/build/)