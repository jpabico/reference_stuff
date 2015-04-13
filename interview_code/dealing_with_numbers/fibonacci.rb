# Completed, not refactored

def fibonacci(desired_length)
    if desired_length.is_a? Integer
        fibo_array = []
        prev_val = 1
        next_val = 1

        if desired_length == 1
            fibo_array << prev_val
        elsif desired_length == 2
            fibo_array << prev_val
            fibo_array << next_val
        elsif desired_length > 2
                fibo_array << prev_val
                fibo_array << next_val
            for i in 0...desired_length-2
                new_val = prev_val + next_val
                fibo_array << new_val
                prev_val = next_val
                next_val = new_val
            end
        else
        end
        fibo_array
    else
        puts "please enter an integer greater than 0"
    end
end

fibonacci(10)