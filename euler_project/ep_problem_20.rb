
product = 1

for i in 1..100
    product *= i
end

a = product.to_s.split("")

b= a.map do |elem|
    elem.to_i
end

sum = 0

b.each do |element|
    sum += element
end

sum
