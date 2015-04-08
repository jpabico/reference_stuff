def find_second_max_value(input_array)
    a = input_array.max
    b = input_array.slice!(input_array.index(a), 1)
    return input_array.max
end





a = [2, 4, 6, 8, 5, 7, 10]
find_second_max_value(a)