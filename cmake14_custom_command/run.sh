rm -rf build
mkdir build && cd build
cmake -D USE_COMMAND=ON ..
make
./main


# rm -rf build
# mkdir build 
# cd build
# # 生成makefile
# cmake -D USE_TARGET=ON   ..
# cmake --build . --target finish 
# make
# ./main