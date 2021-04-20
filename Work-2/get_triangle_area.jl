include("get_triangle_perimeter.jl")
function get_triangle_area(a, b, c)
    semiperimeter = get_triangle_perimeter(a, b, c) / 2;
    return sqrt(semiperimeter * (semiperimeter - a) * (semiperimeter - b) *
     (semiperimeter - c));
end
