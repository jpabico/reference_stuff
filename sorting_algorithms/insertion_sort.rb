def insertion_sort(array_to_sort)
    sorted_array = []
    array_to_sort.each_with_index do |num_to_sort, i|
        if i==0
            sorted_array << num_to_sort
            next
        elsif i==1
            if num_to_sort < sorted_array[0]
                sorted_array.insert(0, num_to_sort)
                next
            else
                sorted_array << num_to_sort
                next
            end
        end

        inserted = 0
        sorted_array.each_with_index do |sorted, j|
            if num_to_sort < sorted_array[j]
                sorted_array.insert(j, num_to_sort)
                inserted +=1
                break
            end
        end
        if inserted==0
            sorted_array << num_to_sort
        end
    end
    sorted_array
end

a = (1..8).to_a
a.shuffle!
p a.inspect
p insertion_sort(a).inspect

