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
            @age += 1
            if @age > 10
                @alive = false
            elsif @age < 3
                @num_fruit = 0
                @height += 2
            elsif @age >=3
                @num_fruit += 4
            end
        else
            @num_fruit += 0
            @alive = false
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
a.pick_fruit
a.to_s
a.grow
a.to_s
a.to_s
a.grow