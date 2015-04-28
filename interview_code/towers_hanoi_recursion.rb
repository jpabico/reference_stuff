# from rosetta code

def move(num_disks, start=0, target=1, using=2)

  # if there's one disk left, move it and move back up stack
  if num_disks == 1
   @towers[target] << @towers[start].pop
    puts "Move disk from #{start} to #{target} : #{@towers}"

  # otherwise call function recursively and move down stack
  else
    # switch using/target so that disk moves to a different peg  
    move(num_disks-1, start, using, target)
    move(1, start, target, using)
    move(num_disks-1, using, target, start)
  end 
end
 
n = 5
disks_array = [*1..n].reverse   #=> [5, 4, 3, 2, 1]
@towers = [disks_array, [], []]
move(n)

# output
# Move disk from 0 to 1 : [[5, 4, 3, 2], [1], []]
# Move disk from 0 to 2 : [[5, 4, 3], [1], [2]]
# Move disk from 1 to 2 : [[5, 4, 3], [], [2, 1]]
# Move disk from 0 to 1 : [[5, 4], [3], [2, 1]]
# Move disk from 2 to 0 : [[5, 4, 1], [3], [2]]
# Move disk from 2 to 1 : [[5, 4, 1], [3, 2], []]
# Move disk from 0 to 1 : [[5, 4], [3, 2, 1], []]
# Move disk from 0 to 2 : [[5], [3, 2, 1], [4]]
# Move disk from 1 to 2 : [[5], [3, 2], [4, 1]]
# Move disk from 1 to 0 : [[5, 2], [3], [4, 1]]
# Move disk from 2 to 0 : [[5, 2, 1], [3], [4]]
# Move disk from 1 to 2 : [[5, 2, 1], [], [4, 3]]
# Move disk from 0 to 1 : [[5, 2], [1], [4, 3]]
# Move disk from 0 to 2 : [[5], [1], [4, 3, 2]]
# Move disk from 1 to 2 : [[5], [], [4, 3, 2, 1]]
# Move disk from 0 to 1 : [[], [5], [4, 3, 2, 1]]
# Move disk from 2 to 0 : [[1], [5], [4, 3, 2]]
# Move disk from 2 to 1 : [[1], [5, 2], [4, 3]]
# Move disk from 0 to 1 : [[], [5, 2, 1], [4, 3]]
# Move disk from 2 to 0 : [[3], [5, 2, 1], [4]]
# Move disk from 1 to 2 : [[3], [5, 2], [4, 1]]
# Move disk from 1 to 0 : [[3, 2], [5], [4, 1]]
# Move disk from 2 to 0 : [[3, 2, 1], [5], [4]]
# Move disk from 2 to 1 : [[3, 2, 1], [5, 4], []]
# Move disk from 0 to 1 : [[3, 2], [5, 4, 1], []]
# Move disk from 0 to 2 : [[3], [5, 4, 1], [2]]
# Move disk from 1 to 2 : [[3], [5, 4], [2, 1]]
# Move disk from 0 to 1 : [[], [5, 4, 3], [2, 1]]
# Move disk from 2 to 0 : [[1], [5, 4, 3], [2]]
# Move disk from 2 to 1 : [[1], [5, 4, 3, 2], []]
# Move disk from 0 to 1 : [[], [5, 4, 3, 2, 1], []]
