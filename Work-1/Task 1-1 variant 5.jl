x = -2.9;
y = 15.5;
z = 1.5;
a = sqrt(x * x + y) - y * y * sin((x + z) / x)^3;
b = cos(x^3)^2 - x / sqrt(z * z + y * y);
println("x = ", x, " y = ", y, " z = ", z, " a = ", a, " b = ",b);
