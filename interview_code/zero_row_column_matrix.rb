def replace_with_zeros(input_matrix, locations_of_zeros)
    # for each locations of zero [x, y] fo the following
    # replace all [x, loop_iterater] in input_matrix with 0
    # replace all [loop_iterater, y] in input_matrix with 0
    # example...
    # input_matrix[2][2] = 0
    # input_matrix

    # set up loops
    locations_of_zeros.each_with_index do |x, i|
        # change all x's to zeros?
        x.each_with_index do |y, j|
            # then change all y's to zero's
            # ...do some testing first...
        end
    end

    return "returning from function replace_with_zeros"
end

def zero_row_column_matrix(input_matrix)
    locations_of_zeros = []
    input_matrix.each_with_index do |x, i|
        x.each_with_index do |y, j|
            if x==0 || y==0
                locations_of_zeros << [i, j]
            end
        end
    end
    
    a = replace_with_zeros(input_matrix, locations_of_zeros)
    return a + " and function zero_row_column_matrix"
end


a = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]]
b = [[1, 0, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]]
c = [[1, 2, 3], [4, 5, 6], [7, 0, 9], [0, 11, 12]]

zero_row_column_matrix(a)
zero_row_column_matrix(b)
zero_row_column_matrix(c)