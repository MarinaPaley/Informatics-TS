function is_valid_rectangle(first_side, second_side)
    first_side_result = first_side != nothing && first_side > 0;
    second_side_result = second_side != nothing && second_side > 0;
    return first_side_result && second_side_result;
end;
