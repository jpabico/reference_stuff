# Completed, not refactored

def selection_sort(array_to_sort)
    sorted_array = []
    for i in 0...array_to_sort.length
        sorted_array << array_to_sort.min
        array_to_sort.delete(array_to_sort.min)
        
        # just for debugging
        # p sorted_array
        # p array_to_sort
    end
    sorted_array
end

a = (1..15).to_a.shuffle!
p a.inspect
p selection_sort(a).inspect
