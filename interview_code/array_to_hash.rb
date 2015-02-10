# z_text_file.txt contains the follwing text:

# Name: Bob
# Age: 24
# Graduated: false

# In a file in the same directory...

# a = File.open('z_text_file.txt', 'r').map do |x|
#     x.gsub!(": ", " ").gsub("\n", "")
#     x.split(" ")
# end

a = [["Name","Bob"],["Age","24"],["Graduated","false"]]

b = a.map do |x|
    [x[0].to_sym, x[1].to_s]
end

c = b.to_h      # c is now a hash

c.keys                                       # array of keys
c.values                                    # array of values
c.keys.zip(c.values) == b       # true