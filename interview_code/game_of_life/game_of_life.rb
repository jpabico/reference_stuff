# Conway's Game of Life

# rules of game

# each cell has 8 neighbors
# any live cell with 0 or 1 live neighbors will die (underpopulation)
# any live cell with 2 or 3 live neighbors will live to next generation
# any live cell with more than 3 live neighbors will die (overpopulation)
# any dead cell with exactly 3 live neighbors will become alive (reproduction)

class World
    attr_accessor :rows, :cols, :cell_grid
    def initialize(rows=3, cols=3)
        @rows = rows
        @cols = cols

        @cell_grid = Array.new(rows) do |row|
            Array.new(cols) do |col|
                Cell.new(col, row)
            end
        end

    end
end
   
class Cell
    attr_accessor :alive, :x, :y
    def initialize(x=0, y=0)
        @alive = false
        @x = x
        @y = y
    end
end

# tie together World and Cell classes
# ex: Game(world, cells)
class Game
    attr_accessor :world, :seeds
    def initialize(world=World.new, seeds=[])
        @world = world
        @seeds = seeds
    end
end