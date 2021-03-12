#include <iostream>
#include <vector>
#include <HelloWorldObject.h>

int main()
{
    HelloWorldObject helloWorld;

    std::vector<int> vec= {1, 2, 3, 4, 5};
    for (int i : vec)
    {
        std::cout << i << " ";
    }
}