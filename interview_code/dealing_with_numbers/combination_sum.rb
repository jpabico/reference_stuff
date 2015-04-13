def combination_sum(input_array, desired_sum)
    a = input_array.combination(2).to_a
    desired_combos = []
    a.each do |x|
        b = x[0]
        c=x[1]
        d = b+c 
        if d==desired_sum
            desired_combos << x
        end
    end
    return desired_combos
end

my_array = [1, 3, 4, 6, 7]
combination_sum(my_array, 7)