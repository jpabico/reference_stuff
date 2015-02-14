def ep_problem_1(upper_limit)

    multiples_of_3_or_5 = []
    i = 1

    while i < upper_limit
        if i % 3 == 0 || i % 5 == 0
            multiples_of_3_or_5 << i
        end
        i +=1
    end

    total = 0

    multiples_of_3_or_5.each do |elem|
        total += elem
    end

    return total

end

ep_problem_1(1000)