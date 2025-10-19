#include <iostream>
#include "cordic.h"

int main() {
    Cordic cordic;
    double angle = 0.785398; // ~45 gradi in radianti
    double cos_val, sin_val;

    cordic.compute(angle, cos_val, sin_val);

    std::cout << "Coseno: " << cos_val << "\n";
    std::cout << "Seno: " << sin_val << "\n";
    return 0;
}
