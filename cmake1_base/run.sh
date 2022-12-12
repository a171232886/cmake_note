rm -rf build
mkdir build && cd build
# 可用cmake -G Ninja .. 切换至Ninja编译
cmake ..
make
./bin/hello