def find_missing_num(array_with_missing_num)
    total = 0
    for i in 1..100
        total += i
    end
    a = array_with_missing_num.inject(:+)
    total - a
end

array_1 = (1..57).to_a
array_2 = (59..100).to_a
input_array = array_1 + array_2
find_missing_num(input_array)