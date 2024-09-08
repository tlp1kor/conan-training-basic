#include "add.h"
#include "mul.h"
#include <iostream>

int main() {
    int a = 5;
    int b = 3;

    int sum = add(a, b);
    int product = multiply(a, b);

    std::cout << "Sum of " << a << " and " << b << " is: " << sum << std::endl;
    std::cout << "Product of " << a << " and " << b << " is: " << product << std::endl;

    return 0;
}
