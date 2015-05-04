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

# [
    #  [Cell.new, Cell.new, Cell.new],
    #  [Cell.new, Cell.new, Cell.new],
    #  [Cell.new, Cell.new, Cell.new]
# ]

    def  live_neighbors_around_cell(cell)
        live_neighbors = []

        live_neighbors
    end
end
   
class Cell
    attr_accessor :alive, :x, :y
    def initialize(x=0, y=0)
        @alive = false
        @x = x
        @y = y
    end

    def alive?
        @alive
    end

    def dead?
        !@alive
    end
end

# tie together World and Cell classes
# ex: Game(world, cells)
class Game
    attr_accessor :world, :seeds

    # since World already has a set of dead cells with coordinates,
    # array seeds only needs to specify coordinates and change status
    # from dead to alive
    def initialize(world=World.new, seeds=[])
        @world = world
        @seeds = seeds

        seeds.each do |seed|
            world.cell_grid[seed[0]][seed[1]].alive = true
        end
    end
end