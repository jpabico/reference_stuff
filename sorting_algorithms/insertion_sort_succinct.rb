def insertion_sort_efficient(input_array)
  1.upto(input_array.length-1) do |i|
    value = input_array[i]
    j = i-1
    while j >=0 && input_array[j] > value
      input_array[j+1] = input_array[j]
      j -=1
    end
    input_array[j+1] = value
  end
  input_array
end

a = [7,6,5,9,8,4,3,1,2,0]
p insertion_sort_efficient(a)
