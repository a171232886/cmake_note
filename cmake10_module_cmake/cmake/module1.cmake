
message("into the module.cmake")
include_directories(module1/include)


# file(GLOB src_list module/src/*.cpp)  # 清空src_list后存入module/src/*.cpp

list(APPEND src_list module1/src/p1.cpp)
# list(APPEND include_list module/include/zzz.h)

message("${src_list}")
message("out of the module.cmake")
