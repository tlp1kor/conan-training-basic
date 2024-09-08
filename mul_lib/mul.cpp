#include "mul.h"
#include <iostream>

int multiply(int a, int b) {
    std::cout << "LOGGING [mul.cpp]: Multiplying " << a << " and " << b << std::endl;  // Logging the multiplication operation
    return a * b;
}
