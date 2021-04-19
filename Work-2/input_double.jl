function input_double(message)
    println(message);
    input = readline();
    return tryparse(Float64, input);
end
