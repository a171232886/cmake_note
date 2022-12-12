rm -rf build
mkdir build && cd build
cmake -D message_1=on ..
# cmake --build .
make
./main