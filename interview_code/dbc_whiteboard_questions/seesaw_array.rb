# Completed, not refactored

# Given a set of numbers, return true or false if there exists a number in the set in which 
# the sum of all the numbers to the left of this number is equal to the sum of all the 
# numbers to the right of it.

# Example: [1,10,2,5,6,9,4,1,4,8,14,6]

# Returns true. Why?

def array_summer(array_to_sum)
    sum = 0
    length = array_to_sum.length
    for i in 0...length
        sum += array_to_sum[i]
    end
    sum
end

def seesaw(input_array)
    is_it_a_seesaw = false
    purgatory = []
    left_array = []
    right_array = input_array
    array_length = input_array.length
    for i in 0...array_length
        purgatory << right_array.shift
        a = array_summer(left_array)
        b = array_summer(right_array)
        p a
        p b

        if a == b
            is_it_a_seesaw = true
            break
        else
            left_array << purgatory.shift
        end
    end
    is_it_a_seesaw
end

a = [1,10,2,5,6,9,4,1,4,8,14,6]
seesaw(a)