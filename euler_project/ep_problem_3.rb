# def find_primes(upper_limit)
#     prime_set = [2]
#     for i in 3..upper_limit
#         count = 0
#         rt_i = (i**0.5).ceil
#         for j in 1..rt_i
#             if i%j == 0
#                 count +=1
#             end
#         end
#         if count==1
#             prime_set << i
#         end
#     end

#     sq_rt = upper_limit**0.5
#     sq_rt_rounded = sq_rt.ceil

#     possible_answers = [71, 839, 1471]
#     j = 0
#     while prime_set[j] < sq_rt_rounded
#         if upper_limit % prime_set[j] == 0
#             possible_answers << prime_set[j]
#         end
#         j +=1
#     end

#     possible_answers.max

# end

# find_primes(600851475143)

i = 2
until 6857 % i == 0
    puts i
    i +=1
end
puts "final i is " + i.to_s

