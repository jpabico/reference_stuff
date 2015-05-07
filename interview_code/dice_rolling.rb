# simulate rolling two dice and finding the sum

# pseudocode - plan of attack
# define class for one die 
# give die some properties (ex. 6 sides represented by integers 1-6)
# give die a roll method to achieve 1 of 6 outcomes
# instantiate two dice objects
# call roll method on each die 
# write a sum method to find the total

class Die
    attr_accessor :num_sides, :actual_die, :current_val
    def initialize(num_sides = 6)
        @num_sides = num_sides
        @actual_die = Array.new(6)
        populate_die(@num_sides, @actual_die)
        @current_val = 1
    end

    def roll
        @current_val = @actual_die.sample
    end

    private

    def populate_die(input_sides, input_die)

        for i in 1..input_sides
            input_die[i-1] = i
        end
        input_die
    end
end

a = Die.new(6)
p a.num_sides
p a.actual_die
p a.current_val
p a.roll
p a.current_val
p a.roll
p a.current_val
p a.roll
p a.current_val
p a.roll
p a.current_val
p a.roll
p a.current_val
