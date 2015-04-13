// Completed, not refactored

function fibonacci(desired_length) {
    var prev_val = 1;
    var next_val = 1;
    var fibo_array = [];
    if(desired_length===1){
        fibo_array.push(prev_val);
    }
    if(desired_length===2){
        fibo_array.push(prev_val);
        fibo_array.push(next_val);
    }
    if(desired_length>2){
        fibo_array.push(prev_val);
        fibo_array.push(next_val);
        for(var i = 0; i < (desired_length-1); i++){
            var new_val = prev_val + next_val;
            fibo_array.push(new_val);
            prev_val = next_val;
            next_val = new_val
        }
    }
    return fibo_array;
}

fibonacci(2);