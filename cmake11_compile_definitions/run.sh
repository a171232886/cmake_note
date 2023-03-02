rm -rf build
mkdir build && cd build
cmake -D PRETEST=ON ..
make
./main