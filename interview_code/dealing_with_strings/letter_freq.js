// Completed, not refactored

function letterFrequency(string_for_counting) {
    var string_as_array = string_for_counting.split("");
    var array_string_length = string_as_array.length;
    var frequency_hash = {};
    for(var i = 0; i < array_string_length; i++){  //loop through array
        if(frequency_hash.hasOwnProperty(string_as_array[i])) {
            frequency_hash[string_as_array[i]] +=1;
        } else {
            frequency_hash[string_as_array[i]] = 1;
        }
    }
    return frequency_hash;
}

var a = letterFrequency("mississippi river is running after me");
console.log(a);
