function get_triangle_area(a, b, c)
    semiperimeter = (a + b + c)/ 2;
    return sqrt(semiperimeter * (semiperimeter - a) * (semiperimeter - b) *
     (semiperimeter - c));
end
