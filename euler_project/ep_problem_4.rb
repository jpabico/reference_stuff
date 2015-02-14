my_array = (100..999).to_a
d = []
x = 0
my_array.each do |a|
    my_array.each do |b|
        x = a*b
        if x.to_s.split("").reverse == x.to_s.split("")
            d << x
        end
    end
end

puts d.max