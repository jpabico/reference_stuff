# Completed, not refactored

def find_primes(upper_limit)
    prime_set = [2]
    for i in 3..upper_limit
        count = 0
        rt_i = (i**0.5).ceil
        for j in 1..rt_i
            if i%j == 0
                count +=1
            end
        end
        if count==1
            prime_set << i
        end
    end
    return prime_set
end

find_primes(50)

#recursive solution

def find_primes_recursively(array = (2..30).to_a, result = [])
    b = array.reject { |i| i%array[0] == 0 }
    if array.length > b.length
        result << array[0]
        find_primes_recursively(b, result)
    else
        result
    end
end

find_primes_recursively()
