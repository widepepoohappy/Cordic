#include "cordic.h"
#include <iostream>
#include <cmath>
#include <cassert>

int main() {
    Cordic cordic(20);
    double angle = M_PI / 4; // 45°
    double cos_val, sin_val;
    cordic.compute(angle, cos_val, sin_val);

    std::cout << "CORDIC cos: " << cos_val << ", std::cos: " << std::cos(angle) << "\n";
    std::cout << "CORDIC sin: " << sin_val << ", std::sin: " << std::sin(angle) << "\n";

    assert(std::abs(cos_val - std::cos(angle)) < 1e-4);
    assert(std::abs(sin_val - std::sin(angle)) < 1e-4);

    std::cout << "Test passed!\n";
    return 0;
}
