function read_int(message)
    println(message);
    input = readline();
    return tryparse(Int, input);
end
