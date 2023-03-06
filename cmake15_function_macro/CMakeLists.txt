cmake_minimum_required(VERSION 3.5)
project(main)

# 参考：https://www.bookstack.cn/read/CMake-Cookbook/content-chapter7-7.1-chinese.md
#  
# function和macro都可以起到C++中函数的作用，区别在于
#   - 宏在调用者的范围内执行，而函数有自己的变量范围
# 
# function中创建的变量属于局部变量，作用域在函数内部。此处作用域类似于C++中。
# 返回变量需要使用带PARENT_SCOPE的set创建变量
# 
# macro中的变量作用域和调用者保持一致


# 定义一个名为func的函数，传入参数是input
function(func input)
    # 向input添加一个a.cpp，添加效果只在函数内部有效
    list(APPEND input func.cpp)
    message("func, ARGC: ${ARGC}, ARGV: ${ARGV}")

    set(func_temp func_test)

    # 用带PARENT_SCOPE的set新建一个func_result，作为返回值
    # 详见cmake12_set
    set(func_result ${input} PARENT_SCOPE)
endfunction(func input)

# 定义一个名为macr 的宏
macro(macr input)
    list(APPEND input macr.cpp)
    message("macro, ARGC: ${ARGC}, ARGV: ${ARGV}")

    set(macr_temp macr_test)
endmacro(macr input)


endmacro()

set(input b.cpp)
# 调用函数
func(input)
message("========function============")
message("input=${input}")
message("func_result=${func_result}")
message("func_temp=${func_temp}")

message("========macro==============")
macr(input)
message("input=${input}")
message("macr_temp=${macr_temp}")

message("========more input==========")
func(input 1.cpp 2.cpp)
macr(input 1.cpp 2.cpp)

# add_executable(main src/main.cpp)