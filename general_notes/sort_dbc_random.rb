############# all original from a directory called practice_stuff

#################### from a file called data.rb
# require 'csv'

# a = []
# CSV.foreach('data.txt') do |row|
#     a << row
# end


# csv_file = CSV.table('data.txt')
# csv_file.each do |row|
#     puts row 
# end


# this would output array of arrays
# each nested array is .length = 2
# first array is header
# take out header
# make hash of remaiing nested arrays
# use hash function


# b = a.shift
# name = []
# age = []
# a.flatten!
# for i in 0...a.length
#     if i % 2 ==0
#         name << a[i]
#         age<< b[0]
#     else
#         age << b[1]
#         name << a[i]
#     end
# end



# a = ["Jon", "kevin", "seba"]
# CSV.open("data.txt", 'w') do |x|
#     puts x
# end

# txt = File.open("data.txt", 'w')
# txt.puts "hello there!"

# s = []

# File.foreach("data.txt"){|x| s << x.split(',')}

# data =  s[1..-1]
# m = data.map do |pair|
#     pair.first
# end

# p m

# [ "a, choco\n", "b, straw\n", "c, vinil\n"]


# [a,b,c]


# d = s.map.with_index do |x, i|
# x if i%2 == 1
# end


# pseudocode

# create data.txt file filled with data
# open the file from a ruby file and import the data
# take imported data and change it into an array of hashes
# write the data back into the text file

# input 

# name, flavor
# a, choco
# b, straw
# c, vanil

# output
# [ {:name => "a", :flavor => "choco"}, {:name => "b", :flavor => "straw}"]


# a = File.readlines('data2.txt')
# header = a.shift
# d = header.split(",")
# b = a.map do |x|
#     x.split(",")
# end
# c = b.map do |elem|
# {d[0]=>elem[0], d[1]=>elem[1]}
# end

# txt = File.open('data.txt', 'w')
# txt.puts c
####################################
####################################
####################################

# require 'csv'

# a = []
# CSV.foreach('data2.txt') do |x|
#     a << x 
# end
# p 
# b = a.shift
# p a.transpose

# d = a.map do |x|
#     b.zip(x)
# end

# p d
# e = d.map do |x|
#     Hash[x]
# end
# p e 

# require 'csv'

# a = []
# CSV.foreach('data2.txt') do |x|
#     a<< x
# end
# header = a.shift
# a.transpose

# b = a.map do |x|
#     Hash[header.zip(x)]
# end
# p b

# stuff = CSV.open('data.txt', 'w')
# stuff.puts b


# require 'csv'

# a = []
# CSV.foreach('data2.txt') do |x|
#     a << x
# end
# header = a.shift
# a.transpose
# b = a.map do |x|
#     Hash[header.zip(x)]
# end

# c = b.map do |x|
#     x[" age"]
# end
# d = c.map do |x|
#     "age =>" + x
# end
# p d 

# stuff = CSV.open('data.txt', 'w')
# stuff.puts d


# require 'csv'

# a = []
# CSV.foreach('data2.txt') do |row|
#     a << row
# end
# header = a.shift
# p header
# p a.transpose

# b = a.map do |elem|
#     Hash[header.zip(elem)]
# end

# c = "\n"
# stuff = CSV.open('data2.txt', 'a')
# # stuff.puts c
# stuff.puts b

require 'csv'

a = []
CSV.foreach('data2.txt') do |x|
    a << x
end
header = a.shift
a.transpose
b = a.map do |x|
    Hash[header.zip(x)]
end

w = CSV.open('data.txt', 'w')
w.puts b


####################### from a file called data.txt

"{""name""=>""a"", "" age""=>"" 12"", "" flavor""=>"" choco"", "" letter""=>"" x""}","{""name""=>""b"", "" age""=>"" 44"", "" flavor""=>"" straw"", "" letter""=>"" y""}","{""name""=>""c"", "" age""=>"" 17"", "" flavor""=>"" vanil"", "" letter""=>"" z""}"


####################### from a file called data2.txt

name, age, flavor, letter
a, 12, choco, x
b, 44, straw, y
c, 17, vanil, z


####################### from a file called practice.rb

# this is my practice file

# Go Fish game
# create a deck of cards
# the deck should have 52 cards
# each card has a value and a suit
# there are n players
# each player gets 7 cards in a hand
# first player asks second player if he/she has a certain card (ask for input)
# if yes, transfer card
# if no, grab card from deck
# if card matches one of the original and remove from hand
# go to next player and repeat
# first person to get rid of all cards from hand is the winner

# class Card

#   def initialize
#     @card_values = %w{ 2 3 4 5 6 7 8 9 10 J Q K A }
#     @card_suits = %w{ c s h d }  # clubs spades hearts diamonds
#   end

#   def create_cards
#     card_strings = []
#     @card_values.each do |val|
#       @card_suits.each do |suit|
#         combine_string = val + suit
#         card_strings << combine_string
#       end
#     end
#     card_strings
#   end

# end

# # my_cards = Card.new
# # p my_cards.create_cards

# class Deck

#   def initialize(number_of_decks)
#     @combined_decks = []
#     new_deck = Card.new
#     for i in 0...number_of_decks
#       @combined_decks << new_deck.create_cards
#     end
#     @combined_decks.flatten!
#   end

#   def shuffle
#     @combined_decks.shuffle!
#   end

#   def start_dealing

#   end

#   def take_a_card
#     @combined_decks.pop
#   end

# #   deal cards to players (7 cards each)
# #   allow players to take cards from deck
# #   inform players if there are no cards left in the Deck

# end
# my_deck = Deck.new(2)

# p my_deck.shuffle





# # used to keep track of order of play
# class Player
#   each time a player is initialized, so is a hand
#   keep track of the order of play
#   asks each player which card is desired
# end

# # Hand class will receive cards from Deck class
# # used to keep track of cards in a player's hand
# class Hand
#   initialized with player
#   keep track of which cards are in hand
#   if a pair exists in the hand, it is placed down (essentially removed from play)
#   if a player doesn't have any more cards, that player wins
# end


# split check application


# def find_prime(array = (2..100).to_a , result = [])


#     b = array.reject { |i| i%array[0] == 0}
#     if array.length > b.length
#         result << array[0]
#         find_prime(b, result)
#     else
#         result
#     end
# end


# arr = (2..150).to_a
# find_prime(arr)
# p "*"*5

def find_prime(upper_limit)
    
    prime_set = [2]
    for i in 3..upper_limit
        count = 0

        rt_i = (i**0.5).ceil
        for j in 1..rt_i
            if i%j==0
                count +=1
            end
        end

        if count ==1
            prime_set << i
        end
    end
    return prime_set
end

n = 100
find_prime(n)

################## this is from a file called practice2.rb

# Brick's recommendation for reading  -----------------------

# # things to Google for OOP stuff
# # tell don't ask --- 

# Mock assessment exercises------------------------------

# b = [3, 4, 5, 6, 7]
# p fake_array_map_method(b)



# new array = []
# File.open('namefile.rtf').each do |x|
#   new_array << x
# end

# arr = %w[john mike mary hello]

# -----

# headers = [:name, :age]
# ages = []
# for i in 0...ages.length
#   ages [i]<< rand(0..10)
# end

# for i in 0...headers.length
#   headers[i].zip(arr[i])
# end

# -----

# data = [{name: 'mike', age: 22}, {name: 'sds', age: 32}, {name: 'ererer', age: 42}]

# data.map.with_index do |x, i|
#   p "Hello #{data[i][:name]}"
# end




# Practice with arrays----------------------------------

# a = [4, 7, 8, 9, 2, 4, 0, 8, 9, 1, 8, 2, 9, 3, 7, 6, 8]
# b = [ 8, 4, 5, 7, 9, 8, 0, 2, 3, 6, 4, 7, 8, 9, 7, 4, 2]
# c = [[2,3],[4,5],[6,7],[8,9]]

# a.reject! do |x|
#   x < 7
# end
# p a


# Practice with Hashes ----------------------------

# p Hash[c]

# a = { :name=> "name", age: 5, energy: false, tests: [3, 7, 6, 8, 9]}
# b= { name: "Carol", age: 14, energy: true, tests: [2,  6, 16, 0, 4]}


# # a.each_pair{ |x, y| puts "The value of key #{x} is #{y}"}

# hash = {1 => 'one', 2 => 'two', 3 => 'three'}
# hash2 = {}

# p a.to_s
# p a
# # p "p hash : #{hash}"
# p "hash.each"
# hash.each do |e| #e is [key,value]
#   p e
# end

# p "hash.each_pair"
# hash.each_pair do |k,v| #k and v class as in hash
#   p "#{k}=#{v}"
# end


# p "hash.each_value"
# hash.each_value do |e| #e is value
#   p e
# end

# p "pash.each_key"
# hash.each_key do |x|
#   p x
# end




# Regular Expressions Challenge -------------------------------

# # Determine whether a string contains a Social Security number.
# def has_ssn?(string)
#   (/\d\d\d\W\d\d\W\d\d\d\d/).match(string) ? true : false
# end

# puts "has_ssn? returns true if it has what looks like a SSN"
# puts has_ssn?("please don't share this: 234-60-1422") == true

# puts "has_ssn? returns false if it doesn't have a SSN"
# puts has_ssn?("please confirm your identity: XXX-XX-1422") == false


# # # Return the Social Security number from a string.
# def grab_ssn(string)
#   my_match = /\d\d\d\W\d\d\W\d\d\d\d/.match(string)
#   if (/\d\d\d\W\d\d\W\d\d\d\d/).match(string)
#     my_match.to_s
#   else
#     nil
#   end
# end


# puts "grab_ssn returns an SSN if the string has an SSN"
# puts grab_ssn("please don't share this: 234-60-1422") == "234-60-1422"

# puts "grab_ssn returns nil if it doesn't have a SSN"
# puts grab_ssn("please confirm your identity: XXX-XX-1422") == nil


# # # Return all of the Social Security numbers from a string.
# def grab_all_ssns(string)
#   string.scan(/\d\d\d\W\d\d\W\d\d\d\d/)
# end

# puts "grab_all_ssns returns all SSNs if the string has any SSNs"
# puts grab_all_ssns("234-60-1422, 350-80-0744, 013-60-8762") == ["234-60-1422", "350-80-0744", "013-60-8762"]

# puts "grab_all_ssns returns an empty Array if it doesn't have any SSNs"
# puts grab_all_ssns("please confirm your identity: XXX-XX-1422") == []


# # # Obfuscate all of the Social Security numbers in a string. Example: XXX-XX-4430.
# def hide_all_ssns(string)
#   my_match = /\d\d\d\W\d\d\W\d\d\d\d/.match(string)
#   if my_match
#     my_match.to_s.gsub(/\d\d\d\W\d\d\W\d\d\d\d/, "XXX-XX-"  + my_match.to_s.slice(7,4))
#   end
# end

# puts "hide_all_ssns obfuscates any SSNs in the string"
# p hide_all_ssns("234-60-1422, 350-80-0744, 013-60-8762") #== "XXX-XX-1422, XXX-XX-0744, XXX-XX-8762"

# puts "hide_all_ssns does not alter a string without SSNs in it"
# string = "please confirm your identity: XXX-XX-1422"
# p hide_all_ssns(string) #== string


# # # Ensure all of the Social Security numbers use dashes for delimiters.
# # # Example: 480.01.4430 and 480014430 would both be 480-01-4430.
# # def format_ssns(string)
# # end

# # puts "format_ssns finds and reformat any SSNs in the string"
# # puts format_ssns("234601422, 350.80.0744, 013-60-8762") == "234-60-1422, 350-80-0744, 013-60-8762"

# # puts "format_ssns does not alter a string without SSNs in it"
# # string = "please confirm your identity: 44211422"
# # puts format_ssns(string) == string


## understanding hashes  (week 1 weekend challenge) -----------------------

# Only work on 1 test at a time, comment out the rest of the tests and work your way down.
# def assert_equals actual, expected
#   puts actual == expected || raise("expected #{expected} but got #{actual}")
# end



# params = {user: {address: {zip: "94607"}}}
# # replace this comment with your code that makes this test past
# assert_equals params[:user][:address][:zip], "94607"



# params = {user: {"address" => {zip: "94607"}}}
# # replace this comment with your code that makes this test past
# assert_equals params[:user]["address"][:zip], "94607"



# params = {user: {address: {0 => "94607"}}}
# # replace this comment with your code that makes this test past
# assert_equals params[:user][:address][0], "94607"



# params = {user: {address: ["94607", "another string"]}}
# # replace this comment with your code that makes this test past
# assert_equals params[:user][:address].first, "94607"



# params = {0 => "94607"}
# # replace this comment with your code that makes this test past
# assert_equals params[0], "94607"



# params = ["94607", "another string"]
# # replace this comment with your code that makes this test past
# assert_equals params.first, "94607"



# params = [{zip: "94607"}, "another string"]
# # replace this comment with your code that makes this test past
# assert_equals params.first, {:zip => "94607"}

# p " 7 finished-----------------------------------------"



# params = {user: [{zip: "94607"}]}
# # replace this comment with your code that makes this test past
# assert_equals params[:user].first[:zip], "94607"



# params = {user:[[{zip: "94607"}],["something"],["something else"]]}
# # replace this comment with your code that makes this test past
# assert_equals params[:user].first.first[:zip], "94607"

# p " 9 finished-----------------------------------------"



# params = {2 => {zip: "94607"}}
# # replace this comment with your code that makes this test past
# assert_equals params[2], {:zip => "94607"}



# params = ["something", "something else", [ ["something", "something else", "94607"], "something", "something else"] ]
# # replace this comment with your code that makes this test past
# assert_equals params[2][0].last, "94607"

# class Deck


#     def initialize
#         @card_set = []
#     end

#     def shuffle
#         @card_set.shuffle!
#     end

#     def draw_card
#         @card_set.pop
#     end

#     def pick_a_card
#         @card_set.sample
#     end

#     def create_cards
#         suits= %w{ d h c s}
#         values = %w{2 3 4 5 6 7 8 9 10 J Q K A}
#         suits. each do |x|
#             values.each do |y|
#                 @card_set << y+x
#             end
#         end
#         @card_set
#     end

# end

# hi = Deck.new
# p hi.create_cards
# p hi.shuffle
# p hi.draw_card
# p hi.pick_a_card