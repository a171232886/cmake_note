rm -rf build
mkdir build && cd build
cmake -DP2=on ..
make
./main