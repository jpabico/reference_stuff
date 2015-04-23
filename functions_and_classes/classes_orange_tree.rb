class Tree
    attr_accessor :age, :height, :num_fruit, :alive
    # certain age and height
    def initialize
        @age = 0
        @height = 0
        @num_fruit = 0
        @alive = true
    end

    # age and height increase
    # dies at certain age
    def grow
        if @alive
            age_a_year
            if @age >= 10
                die_already
            elsif @age < 3
                @num_fruit = 0
                grow_2_units
            elsif @age >=3
                bear_fruit
                grow_2_units
            end
        else
            @num_fruit += 0
            die_already
        end
    end

    # fruit picked from tree
    def pick_fruit
        @num_fruit = 0
    end

    def to_s
        puts "Age of tree is: " + @age.to_s
        puts "Height of tree is " + @height.to_s
        puts "Number of pieces of fruit is " + @num_fruit.to_s
        puts "Tree is alive... " + @alive.to_s
    end

    private

    def age_a_year
        @age +=1
    end

    def grow_2_units
        @height +=2
    end

    def die_already
        @alive = false
        puts "Your tree is dead"
    end

    def bear_fruit
        @num_fruit +=4
    end

end

a = Tree.new
a.to_s
a.grow
a.to_s
a.grow
a.to_s
a.grow
a.to_s
a.grow
a.to_s
a.grow
a.to_s
a.grow
a.to_s
a.grow
a.pick_fruit
a.to_s
a.grow
a.to_s
a.grow
a.to_s
a.grow
a.to_s
a.to_s
a.grow
a.to_s
a.grow
a.to_s
a.pick_fruit
a.to_s
