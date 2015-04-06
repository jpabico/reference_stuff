# Problem: given an array of integers, write a functions that finds the product of every integer except the integer at that index. 
# Example: given a = [1, 7, 3, 4],  the function would return [84, 12, 28, 21] by calculating [7*3*4, 1*3*4, 1*7*4, 1*7*3]
# Additional notes: do not use division in the soultion

def product_array(input_array)
    return_array = []
    input_array.each_with_index do |x, i|
        # puts "x is #{x} and i is #{i}"
        product = 1
        input_array.each_with_index do |y,j|
            if i!=j
                product *= y
            end
        end
        return_array << product
    end
    return return_array
end

a = [1, 7, 3, 4]
product_array(a)