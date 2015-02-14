total = 0
triangle_numbers = []
for k in 1..20000
    total += k
    triangle_numbers << total
end
triangle_numbers
array_length = triangle_numbers.length 


i = 1
factors = []
while i < array_length
    loop_limit = ((triangle_numbers[i])**0.5).ceil
    factors = []
    for j in 1..loop_limit
        if triangle_numbers[i]% j==0   
            factors << j
        end
    end

    puts triangle_numbers[i].to_s + " at index " + i.to_s + " has " + factors.length.to_s + " factors"
    if factors.length >  250 # 500 / 2
        puts "---------------------found it!-----------------------"
        puts "the number is: " + triangle_numbers[i].to_s
        puts "it is located at index: " + i.to_s
        puts "it has this many factors:" + factors.length.to_s
        puts "here are its factors:"
        puts factors.inspect
        break
    end
    i +=1
end
