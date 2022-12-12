cmake_minimum_required(VERSION 3.5)

# list 
# cmake中的列表，包含的功能不亚于python中的list
# 这里只展示最常用的append
set (src_list a.cpp b.cpp)
list(APPEND src_list c.cpp d.cpp)
message(${src_list})
