def zero_row_column_matrix(input_matrix)
    locations_of_zeros = []
    input_matrix.each_with_index do |x, i|
        x.each_with_index do |y, j|
            if x==0 || y==0
                locations_of_zeros << [i, j]
            end
        end
    end
    locations_of_zeros.inspect
end


a = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]]
b = [[1, 0, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]]
c = [[1, 2, 3], [4, 5, 6], [7, 0, 9], [0, 11, 12]]

zero_row_column_matrix(a)
zero_row_column_matrix(b)
zero_row_column_matrix(c)