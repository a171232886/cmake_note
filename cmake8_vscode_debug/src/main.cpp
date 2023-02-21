#include <thread>
#include <iostream>
using namespace std;

void fun(){
    cout << std::this_thread::get_id() << endl;
    cout << "aaaaa" << endl;
}

int main(int argc, char ** argv){
    cout << argv[1] << endl;
    std::thread t1(fun);
    t1.join();
    return 0;
}