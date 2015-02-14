a = (1..997).to_a   #change to 997
b = (1..997).to_a   # change to 997
pythagorean_triples = []
a_array_length = a.length
b_array_length = b.length 

for i in 0...a_array_length
    for j in 0...b_array_length
        c_squared = (a[i])**2 + (b[j])**2
        sqrt = c_squared**0.5
        if sqrt == sqrt.to_i
            pythagorean_triples << [a[i], b[j], sqrt]
        end
    end
end

pt_array_length = pythagorean_triples.length

for i in 0...pt_array_length
    sum = pythagorean_triples[i][0] + pythagorean_triples[i][1] + pythagorean_triples[i][2]
    if sum == 1000
        puts "_____________________found it!____________________"
        r = pythagorean_triples[i][0]
        s = pythagorean_triples[i][1]
        t = pythagorean_triples[i][2]
        puts r*s*t
    end
end
