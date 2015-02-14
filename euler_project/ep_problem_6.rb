sum_of_squares = 0
sum_of_i = 0
for i in 1..100
    sum_of_squares += (i**2)
    sum_of_i +=  i
end
square_of_sum_of_i = sum_of_i**2
difference = square_of_sum_of_i - sum_of_squares
