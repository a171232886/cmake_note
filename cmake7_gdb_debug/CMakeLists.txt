project(main)

# gdb调试cmake组织的可执行文件，需要添加的内容
set(CMAKE_BUILD_TYPE "Debug")
set(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -O0 -Wall -g2 -ggdb")
set(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -O3 -Wall")

# 对于g++直接编译，可以使用以下命令（添加-g）
# g++ -g ./main.cpp -o main

add_executable(main src/main.cpp)
