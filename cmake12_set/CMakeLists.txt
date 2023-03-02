cmake_minimum_required(VERSION 3.5)
project(test)

# 参考
# 1. https://www.jianshu.com/p/c2c71d5a09e9
# 2. https://cmake.org/cmake/help/latest/command/set.html

# CMake变量作用域：函数内或一个cmakelist内
# 1. 类似于C++的局部变量：
#   - subdirectory中定义的局部变量，不能被上级目录使用
#   - subdirectory中可读取上级的局部变量，改写值只能在当前作用域有效
#
# 2. set的PARENT_SCOPE选项，用于向上级传递返回变量，类似于C++的return
#   - ** 只推荐在向上级返回变量时使用！！！** 
#   - set(var value PARENT_SCOPE) 生成的变量var只能被上级调用，当前作用域不可读取
#   - 由带PARENT_SCOPE的set定义的变量，
#       - 普通set对该变量改写值只能在当前作用域有效
#       - 带PARENT_SCOPE的set的改写会影响到上级作用域
# 
# 3. set设置全局变量
#   - 推荐用法： set(var value CACHE INTERNAL "help" FORCE) 
#       - 此时value类型为文本（string），会写入CMakeCache.txt
#       - 普通set改写该变量只影响当前作用域，不影响CMakeCache.txt
#       - 只有带Cache的写法会影响CMakeCache.txt
#
# 4. set修改系统环境变量
#   - set(ENV{var} value) 只在构建过程中起作用，不会影响系统的环境变量
#   注意：
#       set(CMAKE_CXX_STANDARD 11)尽管没有改变CMakeCache.txt的值，
#       但**在当前作用域及其下级作用域**是已经生效的



set(var_local_main hello_main)
set(var_PARENT_SCOPE_main PARENT_SCOPE_main PARENT_SCOPE)
set(var_cache_main on CACHE INTERNAL "help" FORCE)
set(CMAKE_CXX_FLAGS "-ggdb")


add_subdirectory(sub)

message("######################### 主目录 常规用法分析")
message("在主目录, 局部变量var_local_main = ${var_local_main}")
message("在主目录, 局部变量var_local_sub = ${var_local_sub}")

message("######################### 主目录 PARENT_SCOPE分析")
message ("在主目录, 局部变量var_PARENT_SCOPE_main = ${var_PARENT_SCOPE_main}, 只能访问下级定义的变量")
message ("在主目录, 局部变量var_PARENT_SCOPE_sub_1 = ${var_PARENT_SCOPE_sub_1}, 普通set的改写不会影响到上级作用域")
message ("在主目录, 局部变量var_PARENT_SCOPE_sub_2 = ${var_PARENT_SCOPE_sub_2}, 带PARENT_SCOPE的set的改写会影响到上级作用域")

message("######################### 主目录 CACHE分析")
message ("在主目录, 全局变量var_cache_main = ${var_cache_main}")
set(var_cache_main on_main CACHE INTERNAL "help" FORCE)
message ("在主目录, 全局变量var_cache_main = ${var_cache_main}, 带cache的修改才影响CMakeCache.txt")
set(var_cache_main on_main1)
message ("在主目录, 全局变量var_cache_main = ${var_cache_main}, 普通set可修改不影响CMakeCache.txt")

message("######################### 主目录 ENV分析")
message("打印系统环境变量，$ENV{PATH}")
message("打印当前目录，$ENV{PWD}")

message("在主目录, CMAKE_CXX_FLAGS = ${CMAKE_CXX_FLAGS}")