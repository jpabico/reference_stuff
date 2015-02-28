# Completed, not refactored

# Write a function to reverse a string in place. 
# "In place" means "without creating a new string in memory."

def reverse_string(string_to_reverse)
    a = string_to_reverse.split('')
    p a
    length = a.length
    num_iterations = length/2 + 1
    for i in 0...num_iterations
        a[i], a[(length-i)] = a[(length-i)], a[i]
    end
    a.join('')
end

reverse_string('how are you doing today?')