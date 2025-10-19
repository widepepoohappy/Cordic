#include "cordic.h"
#include <cmath>
#include <iostream>



Cordic::Cordic(int iterations) : iterations_(iterations) {
    initialize();
}

void Cordic::initialize() {
    K_ = 1.0;
    atan_table_.resize(iterations_);
    for (int i = 0; i < iterations_; ++i) {
        atan_table_[i] = atan(pow(2, -i));
        K_ *= 1.0 / sqrt(1 + pow(2, -2 * i));
    }
}

void Cordic::compute(double angle, double &cos_val, double &sin_val) const {
    double x = K_, y = 0.0, z = angle;
    for (int i = 0; i < iterations_; ++i) {
        double d = (z >= 0) ? 1.0 : -1.0;
        double x_new = x - d * y * pow(2, -i);
        double y_new = y + d * x * pow(2, -i);
        double z_new = z - d * atan_table_[i];
        x = x_new;
        std::cout << "Printing x: " << x << std::endl;
        y = y_new;
        std::cout << "Printing y: " << x << std::endl;
        z = z_new;
    }
    cos_val = x;
    sin_val = y;
}
