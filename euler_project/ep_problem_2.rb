def even_fibonacci(upper_limit)
    fibo_array = [1, 1]
    i = 2
    while fibo_array[(i-1)]<upper_limit
        new_value = fibo_array[(i-2)] + fibo_array[(i-1)]
        fibo_array << new_value 
        i+=1
    end

    fibo_array.pop
    fibo_array.select! { |i| i%2==0 }
    
    total = 0
    fibo_array.each do |elem|
        total += elem
    end
    total

end

even_fibonacci(4000000)