a = "This is a Sample string with CAPS and all?"
b = 'this one\'s got an escaped character'
c = "hey"
d = "dude"
x, y, z = 12, 24, 48

puts "the value of x is #{x}"
puts "the sum of x and y is #{ x + y}"
puts "the average of x, y, and z is #{ (x+y+z)/3}"

%{Ruby is fun.}    # "Ruby is fun"

# common methods
a.downcase  # "this is a sample string with caps and all?"
c * 4   # "heyheyheyhey"
c + d   # "heydude"
c << d   # "heydude"
c <=> d   # 1
d <=> c   # -1
b.capitalize
a.chomp   # removes \n from the end of a string
d.chop   # "dud"
b.count("c")   # 3... because there are 3 c's
