// Completed, not refactored

function insertion_sort(array_to_sort) {
    var sorted_array = [];
    sorted_array.push(array_to_sort[0]);
    var loop_array_to_sort = array_to_sort.length

    for(var i = 1; i < loop_array_to_sort; i++){
        document.write(i);
        var placement_index = compare_numbers(array_to_sort[i], sorted_array);
        sorted_array.splice(placement_index, 0, array_to_sort[i])

    }

    return sorted_array;

}

function compare_numbers(x, array_elements) {
    var array_length = array_elements.length
    var index = "placeholder";
    for(var i = 0; i < array_length; i++) {
        if(x <= array_elements[i]){
            index = i;
            break;
        } else {
            continue;
        }
    }
    if(index==="placeholder"){
        index= array_length;
    }
    return index;

}

var a = [3, 6, 5, 8, 9, -1, 0, 2, 4, 4, 7, 6, 8, 19, ];
insertion_sort(a)