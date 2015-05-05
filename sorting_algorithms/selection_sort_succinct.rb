def selection_sort(input_array)
  for i in 0..input_array.length-2
    min_index = i
    for j in (i+1)...input_array.length
      min_index = j if input_array[j] < input_array[min_index]
    end
    input_array[i], input_array[min_index] = input_array[min_index], input_array[i]
  end
  input_array
end

a = [7,6,5,9,8,4,3,1,2,0]

p selection_sort(a)