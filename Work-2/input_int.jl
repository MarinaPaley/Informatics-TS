function input_int(message)
    println(message);
    input = readline();
    return tryparse(Int8, input);
end
