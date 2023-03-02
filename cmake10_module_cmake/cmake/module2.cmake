
message("into the module.cmake")
include_directories(module2/include)


# file(GLOB src_list module2/src/*.cpp)  # 清空src_list后存入module/src/*.cpp

list(APPEND src_list module2/src/p2.cpp)
# list(APPEND include_list module/include/2.h)

message("${src_list}")
message("out of the module.cmake")
