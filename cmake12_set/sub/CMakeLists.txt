message("######################### 下级目录 常规用法分析")

set(var_local_sub hello_sub)

message("在下级目录, 局部变量var_local_main = ${var_local_main}")
message("在下级目录, 局部变量var_local_sub = ${var_local_sub}")

set(var_local_main  hello_test)
message("在下级目录, 局部变量var_local_main = ${var_local_main}, 修改只能在当前作用域中有效")



message("######################### 下级目录 PARENT_SCOPE分析")

message("在下级目录, 局部变量var_PARENT_SCOPE_main = ${var_PARENT_SCOPE_main}")

set(var_PARENT_SCOPE_sub_1 hello_test1)

set(var_PARENT_SCOPE_sub_1 PARENT_SCOPE_sub PARENT_SCOPE)
message ("在下级目录, 局部变量var_PARENT_SCOPE_sub_1 = ${var_PARENT_SCOPE_sub}, 在当前作用域中，受之前定义的影响")

set(var_PARENT_SCOPE_sub_1 hello_test2)
message ("在下级目录, 局部变量var_PARENT_SCOPE_sub_1 = ${var_PARENT_SCOPE_sub}, 在当前作用域中，定义后可被修改")

# 修改PARENT_SCOPE定义的变量值，只能用带PARENT_SCOPE的选项
set(var_PARENT_SCOPE_sub_2 PARENT_SCOPE_sub_2 PARENT_SCOPE)


message("######################### 下级目录 CACHE分析")
message ("在下级目录, 全局变量var_cache_main = ${var_cache_main}")
# set(var_cache_main on_sub CACHE INTERNAL "help" FORCE)
message ("在下级目录, 全局变量var_cache_main = ${var_cache_main}, 带cache的修改可影响全局作用域")
set(var_cache_main on_sub1)
message ("在下级目录, 全局变量var_cache_main = ${var_cache_main}, 普通set修改只影响当前作用域")

set(CMAKE_CXX_FLAGS "-ggdb -O0")
message("在下级目录, CMAKE_CXX_FLAGS = ${CMAKE_CXX_FLAGS}, 修改不能传递到上级目录中")