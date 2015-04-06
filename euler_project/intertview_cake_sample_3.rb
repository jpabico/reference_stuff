# Problem: given an array_of_ints, find the highest_product you can get from 3 of the integers.
# Notes: the input array_of_ints will always have at least 3 integers

def highest_product(input_array)
    max_array = []
    input_array.sort!
    3.times {max_array << input_array.pop}
    max_array.inject(:*)
end

a = [2, 4, 6, 8, 5]
highest_product(a)

