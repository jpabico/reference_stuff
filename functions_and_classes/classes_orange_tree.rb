class Tree

    # certain age and height
    def initialize
        @age = 0
        @height = 0
        @num_fruit = 0
    end

    # age and height increase
    # dies at certain age
    def grow
        @height += 2
        @age = 1
    end

    # show number of fruit
    # must reach fruit0bearing age first
    def bear_fruit
        if @age < 3
            @num_fruit = 0
        elsif @age >=3 && @age < 10
            @num_fruit += 4
        else
            @num_fruit += 0
        end
    end

    # fruit picked from tree
    def pick
        @num_fruit = 0
    end
end

