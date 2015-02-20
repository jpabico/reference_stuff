# Some useful methods for hashes in Ruby
# see documentation for complete set of methods


a = {first_name: "joe", last_name: "smith"}
a[:middle_name] = "michael"
a[:age] = 24
a[:graduated] = false
a
a[:first_name]          #=> "joe"
a.key("joe")               #=> :first_name
a.assoc(:graduated)     #=> returns array [:graduated, false]


b = Hash.new            # no default value
b[:age] = 4
b


c = Hash.new(3)        # same as c.default = 3
c["s"]+=22
c                                  #=> 25


# returns arrays for keys/values
a.keys
a.values
a.length


# common methods

# e[:example].upcase
# e[:example].upcase!
# e[:example].equal?(to_something)  #=> boolean
# e.clear     #=> {}
# e.delete_if { |k, v| block }
# e.keep_if { |k, v| block }
# e.select { |k, v| block }
# e.reject { |k, v| block }
# e.empty?
# e.each { |k, v| block }
# e.each_key { |k| block }
# e.each_value { |v| block }
# e.has_key?("name_of_key")   #=> boolean
# e.has_value?("name_of_value")   #=> boolean
# e.to_s          #=> string representation of hash

# f = some_hash_1
# g = some_hash_2
# f.merge(g)      #=> one big hash


d = {building: "main hall", room: 5, occupied: true}
d.shift        #=> [:building, "main hall"]
d.flatten   #=> [:building, "main hall", :room, 5, :occupied, true]

h = {address: "555 dirt road", state: "NV", city: "Vegas"}
h.to_a      #=> [[:address, "555 dirt road"], [:state, "NV"], [:city, "Vegas"]]