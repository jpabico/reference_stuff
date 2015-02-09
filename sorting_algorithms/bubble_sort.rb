# Completed, not refactored

# In bubble sort, adjacent pairs are compared
# smaller numbers move down, bigger ones move up 

def bubble_sort(num_array_to_sort)

    # do this for as many times as there are elements in the array
    for j in 1...num_array_to_sort.length   

        num_array_to_sort.each_with_index do |num, i|
            if i+1 == num_array_to_sort.length
                break
            elsif num_array_to_sort[i] > num_array_to_sort[i+1]
                temp = num_array_to_sort[i]
                num_array_to_sort[i] = num_array_to_sort[i+1]
                num_array_to_sort[i+1] = temp
            end
        end
        j +=1

    end
    
    num_array_to_sort  # returns sorted array

end

a = (0..15).to_a.shuffle!
p a.inspect
p bubble_sort(a)