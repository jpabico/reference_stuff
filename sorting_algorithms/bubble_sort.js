// Completed, not refactored

function bubble_sort(array_to_sort) {
    var num_loops = array_to_sort.length;
    var sorted_array = "placeholder";
    for(var i = 1; i < num_loops; i++){
        for(var j = 1; j < num_loops; j++) {
            if(array_to_sort[(j-1)] > array_to_sort[j]) {
                var switched = swap(array_to_sort[(j-1)], array_to_sort[j]);
                array_to_sort[(j-1)]=switched[0];
                array_to_sort[(j)]=switched[1];
            }
        }
    }
    return array_to_sort;
}

function swap(a, b) {
    var temp = a;
    a = b;
    b = temp;
    return [a, b];
}

a = [2, 5, 6, 8, 7, 9, 2, 4, 3, 0, 6];
bubble_sort(a);