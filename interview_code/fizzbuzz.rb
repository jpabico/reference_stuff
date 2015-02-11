def fizzbuzz(upper_limit)
    if !upper_limit.is_a? Integer
        puts "Please use an integer for an argument"
    else
        for i in 1..upper_limit
            if  i%3 == 0 && i%5 == 0
                puts "fizzbuzz"
            elsif i%3 == 0
                puts "fizz"
            elsif i%5 == 0
                puts "buzz"
            else 
                puts i
            end
        end
    end
end

fizzbuzz(50)