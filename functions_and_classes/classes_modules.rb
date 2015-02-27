module Mmm
    class Ccc
        def oneone
            @x = 11
        end
    end
end

class Person
    attr_accessor :age
    include Mmm
    @@a = Mmm::Ccc.new
    def initialize(name, age)
        @name = name
        @age = age
    end

    def add_11
        @age +=@@a.oneone
    end
end

s = Person.new("bob", 3)
s.add_11
s.age
s