# Completed, not refactored

# Filling Jars: You have a bunch of jars labeled 1 to N.
# You are given a set of instructions detailing how much candy to put in each jar.
# After you finish all the instructions, you need to return the average number of candies in each jar.
# Example Input: [5,[1,2,100],[2,5,100],[3,4,100]]
# [num_jars, [start_jar, end_jar, num_candy],[start_jar, end_jar, num_candy], etc] 
# 5 #=> [0,0,0,0,0]
# 1, 2, 100 #=>[100,100,0,0,0]
# 2, 5, 100 #=>[100,200,100,100,100]
# 3, 4, 100 #=>[100,200,200,200,100]
# Example Output: 160

def average_candy(instructions_array)
    num_jars = instructions_array.shift
    jar_contents = Array.new(num_jars, 0)

    instructions_array.each do |x|
        start_index = x[0] - 1
        finish_index = x[1] - 1
        pieces_candy = x[2]
        for i in start_index..finish_index
            jar_contents[i] += pieces_candy
        end
    end
    sum = 0
    jar_contents.each do |a|
        sum +=a
    end
    sum/jar_contents.length
end

average_candy([5,[1,2,100],[2,5,100],[3,4,100]])