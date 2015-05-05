def bubble_sort(input_array)
  input_array.length.times do |j|
    for i in 1...(input_array.length-j)
      if input_array[i] < input_array[i-1]
        input_array[i], input_array[i-1] = input_array[i-1], input_array[i]
      end
    end
  end
  input_array
end

a = [3, 78, 4, 23, 6, 8, 6]

p bubble_sort(a)