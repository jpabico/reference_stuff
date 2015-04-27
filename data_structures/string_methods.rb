a = "This is a Sample string with CAPS and all?"
b = 'this one\'s got an escaped character'
c = "hey"
d = "dude"
e = " middle "

x, y, z = 12, 24, 48

puts "the value of x is #{x}"
puts "the sum of x and y is #{ x + y}"
puts "the average of x, y, and z is #{ (x+y+z)/3}"

%{Ruby is fun.}    # "Ruby is fun"

# common methods
a.downcase  # "this is a sample string with caps and all?"
a.upcase 
c * 4   # "heyheyheyhey"
c + d   # "heydude"
c << d   # "heydude"
c <=> d   # 1
d <=> c   # -1
b.capitalize
a.chomp   # removes \n from the end of a string
d.chop   # "dud"
b.count("c")   # 3... because there are 3 c's
a.delete("a")   # "This is  Smple string with CAPS nd ll?"
a.empty?
a.eql?(b)
a.gsub("i", "iii")   # pattern can be regex
a.include?("x")
a.insert(3, "zzzzzzzz")   # "Thizzzzzzzzs is a Sample string with CAPS and all?"
c.to_sym
b.length
#  for regular expressions  => a.match(pattern), a.scan(pattern) {|match| block}
b.reverse
e.strip  # removes leading/trailing whitespace
# lstrip and rstrip are used for one or the other only
b.slice(3, 1)   # same as javascript's splice method 
e.split('')  # [" ", "m", "i", "d", "d", "l", "e", " "]
a.swapcase   # uppercase to lower and vice versa
x.to_s.to_f   #floating point number
x.to_s.to_i   # integer