# Completed, not refactored

def selection_sort(array_to_sort)
    sorted_array = []
    for i in 0...array_to_sort.length
        @min_found = find_min(array_to_sort)
        sorted_array << @min_found
        array_to_sort.delete_at(array_to_sort.index(array_to_sort.min))    
    end
    sorted_array
end

def find_min(array_to_search)
    @array_min = array_to_search[0]
    if array_to_search.length < 2
        return @array_min
    else
        array_to_search.each_with_index do |elem, inx|
            if elem < @array_min
                @array_min = elem
            end
        end
    end
    @array_min
end

a = (1..25).to_a.shuffle!
b = [3, 6, 5, 7, 9, 8, 7, 3, 5, 4, 7, 9, 9, 8]
selection_sort(a)
selection_sort(b)