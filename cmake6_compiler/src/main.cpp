#include <thread>
#include <chrono>
#include <iostream>
using namespace std;

int main()
{
    cout << "After 100 ms," << endl;
    std::this_thread::sleep_for(std::chrono::microseconds(100));
    cout << "Hello World!" << endl;
    return 0;
}