my_hash = {

    "onehundredand" => 99,
    "twohundredand" => 99,
    "threehundredand" => 99,
    "fourhundredand" => 99,
    "fivehundredand" => 99,
    "sixhundredand" => 99,
    "sevenhundredand" => 99,
    "eighthundredand" => 99,
    "ninehundredand" => 99,
    "onehundred" => 1,
    "twohundred" => 1,
    "threehundred" =>1,
    "fourhundred" =>1,
    "fivehundred" => 1,
    "sixhundred" => 1,
    "sevenhundred" => 1,
    "eighthundred" => 1,
    "ninehundred" => 1,
    "twenty" => 100,
    "thirty" => 100,
    "forty" => 100,
    "fifty" =>100,
    "sixty" => 100,
    "seventy" => 100,
    "eighty" => 100,
    "ninety" => 100,
    "eleven" => 10,
    "twelve" => 10,
    "thirteen" => 10,
    "fourteen" => 10,
    "fifteen"=> 10,
    "sixteen" => 10,
    "seventeen" => 10,
    "eighteen" => 10,
    "nineteen" => 10,
    "ten" => 10,
    "one" => 90,
    "two" => 90,
    "three" => 90,
    "four" => 90,
    "five" => 90,
    "six" => 90,
    "seven" => 90,
    "eight" => 90,
    "nine" => 90
}
a = my_hash.keys
b = a.map do |elem|
    elem.split("")
end
c = b.map do |ele|
    ele.length
end
c
d = my_hash.values
e = c.zip(d)
f = e.map do |el|
    el[0] * el[1]
end
f
total = 0
f.each do |e|
    total += e
end
total + 11
