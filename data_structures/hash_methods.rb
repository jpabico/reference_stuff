# Some useful methods for hashes in Ruby
# see documentation for complete set of methods

a = {first_name: "joe", last_name: "smith"}
a[:middle_name] = "michael"

b = Hash.new            # no default value
b[:age] = 4
b

c = Hash.new(3)        # default value of 3 for new keys
c["s"]+=22
c

