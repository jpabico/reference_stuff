# Completed, not refactored

# Given an array of numbers.
# One of these numbers occurs once in the array. 
# Other numbers occur at least twice.
# Write a function that returns the lonely integer.

# Example: [2,6,3,8,6,2,3] Returns: 8

def find_lonely_num(array_of_numbers)
    a = Hash.new(0)
    array_of_numbers.each do |elem|
        a[elem]+=1
    end
    a.key(1)
end

b = [2, 4, 6, 8, 10, 3, 6, 9, 12, 50, 2, 4, 6, 8, 10, 3, 6, 9, 12]
find_lonely_num(b)