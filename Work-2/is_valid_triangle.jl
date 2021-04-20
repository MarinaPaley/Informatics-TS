function is_valid_triangle(a, b, c)
    is_a_exiists = a != nothing && a > 0;
    is_b_exiists = b != nothing && b > 0;
    is_c_exiists = c != nothing && c > 0;
    return is_a_exiists && is_b_exiists && is_c_exiists &&
    (a + b) > c && (b + c) > a && (a + c) > b;
end
