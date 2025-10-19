#pragma once
#include <vector>

class Cordic {
public:
    explicit Cordic(int iterations = 16);
    void compute(double angle, double &cos_val, double &sin_val) const;
private:
    int iterations_;
    std::vector<double> atan_table_;
    double K_;
    void initialize();
};
