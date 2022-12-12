cmake_minimum_required(VERSION 3.5)

project(hello)
set(src_list src/hello.cpp)
set(include_list include/hello.h)

include_directories(${PROJECT_SOURCE_DIR}/include/)

# option(<option_variable> "help string" [initial value])
# option创建一个可编辑的变量message_1，默认值为OFF
# 生成makefile时，通过命令cmake -D message_1=on修改值
option(message_1 "show the compile message_1" OFF)
option(message_2 "show the compile message_2" OFF)

# 只有if()和elseif()中的值有效
# else()和endif()中的表达式可以随便写，通常不写

# 如果将逻辑变量设置为以下任意一种：1、ON、YES、true、Y或非零数，则逻辑变量为true
# 如果将逻辑变量设置为以下任意一种：0、OFF、NO、false、N、IGNORE、NOTFOUND、空字符串，
# 或者以-NOTFOUND为后缀，则逻辑变量为false。
if(message_1)
    message("Good morning")
    add_executable(main ${src_list} ${include_list})
elseif(message_2)
    message("Good afternoon")
    add_executable(main ${src_list} ${include_list})
else()
    add_executable(main ${src_list} ${include_list})
endif()