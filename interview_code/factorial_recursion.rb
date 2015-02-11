# Completed, not refactored

def find_factorial(number_to_factorialize)
    if number_to_factorialize == 0 || number_to_factorialize==1
        return 1
    else
        one_less = number_to_factorialize - 1
        return number_to_factorialize * find_factorial(one_less)
    end

end

find_factorial(5)