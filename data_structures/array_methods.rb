# Some useful methods for arrays in Ruby
# see documentation for complete set of methods

a = [];
b = Array.new(4){"hi"}   #=> ["hi", "hi", "hi", "hi"]
variety_array = ["hi", true, 2, {name: "bob", age: 21}]
empty_grid = Array.new(3){ Array.new(3){0}}   #=>  3x3 table full of zeros
empty_grid.flatten    #=> changes to 1-D array

# Accessing elements
c = [2, 5, 4, 7, 8, 9, 4, 2, 3, 6, 5]
c[2]   #=> 4
c[-2]   #=> 6
c[200]   #=> nil
c.fetch(2, "oops")   #=> 4
c.fetch(200, "oops")   #=> "oops"

c.first   #=> 2
c.last   #=> 5
c.take(3)   #=> returns first 3 elements as an array
c.drop(3)    #=> returns everything except first 3 elements as an array

# some intuitive ones
c.length
c.empty?
c.include?(4)
c.clear

# adding to array
d = [1, 2, 3, 4]
d.push(5)    
d << 6    
d.unshift(0) 

# removing from array
d.pop 
d.shift 

# more general ways to add/remove 
e = [55, 22, 33, 9]
e.insert(2, true)    #=> [55, 22, true, 33, 9]
e.insert(4, "hi", "you")    #=> [55, 22, true, 33, "hi", "you", 9]
e.slice!(3, 2)    #=> [33, "hi"]
e   #=> [55, 22, true, "you" 9]

f = [4, 2, 5, 4, 0, 7, 8, 6, 9, 1, 5]
f.select { |a| a > 5 }
f.reject { |a| a < 2 }

words = %w[up on the house top on Sunday]    #=> ["up", "on", "the", "house", "top", "on", "Sunday"]
words.compact!    #=> removes nil elements if any
words.uniq    #=> removes duplicates
words.index("the")    #=> 2
words.join("---")    #=> back to a string with --- between each element

#   important to know:
#   array#each and array#each_with index 
#   array#map and array#map_with_index

g = [3, 4, 5, 6, 7, 8]
g.reverse    #=> reverses order of elements
g.sample     #=> picks 1 random element
g.sample(2)    #=> picks 2 random elements
g.shuffle    #=> rearranges elements into different order
g.sort

h = [1, 3, 5, 7]
i = [2, 4, 6, 8]
j = h.zip(i)    #=> [[1, 2], [3, 4], [5, 6], [7, 8]]
j.to_h    #=> changes into a hash