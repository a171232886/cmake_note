# 当项目复杂之后，有两种方式易于管理：
#   1. 使用add_subdirectory() 分层级编写CMakeLists
#   2. 使用include(cmake/module.cmake) 分模块编写
#
# 此处介绍分模块编写


cmake_minimum_required(VERSION 3.5)
project(main)

set(src_list demo/main.cpp)

# 如果在编译时使用cmake -DP1=on .. 就会引入module1.cmake
if(P1)
include(cmake/module1.cmake)
endif()

if(P2)
include(cmake/module2.cmake)
endif()

# add_executable生成执行文件并不需要包含头文件
# 即，不需要add_executable(main ${src_list} ${include_list})
# 但需要之前include_directories(module/include)
message("${src_list}")
add_executable(main ${src_list})