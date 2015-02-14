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
    # return prime_set
    return prime_set.last
end


find_primes(104750)


