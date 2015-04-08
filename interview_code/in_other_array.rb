def missing_in_other_array(array_1, array_2)
    missing_numbers = []
    array_1.each do |x|
        if !array_2.include?(x)
            missing_numbers << x
        end
    end
    missing_numbers
end


a = [1, 2, 3, 4, 5]
b = [2, 4, 6, 8, 10]
missing_in_other_array(a, b)