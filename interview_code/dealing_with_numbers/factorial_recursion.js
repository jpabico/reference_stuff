// Completed, not refactored

function find_factorial(number_to_factorialize) {
    if (number_to_factorialize===1 || number_to_factorialize===0) {
        return 1;
    } else {
        var one_less = number_to_factorialize-1;
        return number_to_factorialize * find_factorial(one_less);
    }
}

find_factorial(0);