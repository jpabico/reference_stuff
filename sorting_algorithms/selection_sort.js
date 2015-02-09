// Completed, not refactored

document.body.innerHTML = "";
function selection_sort(array_to_sort) {
    var sorted_array = [];
    var length_of_array = array_to_sort.length
    for(var i = 0; i < length_of_array; i++){
        var found_min = find_min(array_to_sort);
        sorted_array.push(found_min);
        array_to_sort.splice(array_to_sort.indexOf(found_min), 1);
    }
    return sorted_array;
}

function find_min(array_to_search) {
    var array_min = array_to_search[0];
    var iterations_limit = array_to_search.length-1;
    if(array_to_search.length<2) {
        return array_min;
    } else {
        for(var j = 0; j < iterations_limit; j++) {
            if(array_to_search[(j+1)] < array_min) {
                array_min = array_to_search[(j+1)];
            }
        }
    }
    return array_min;
}

a = [6, 4, 5, 8, 9, 7, 0, 9, 5, 6, 2, 2, 4, 3, 6, 5, 8, 9];
selection_sort(a);