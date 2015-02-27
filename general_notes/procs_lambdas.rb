a = [1, 2, 3, 4]
b = [5, 6, 7, 8]
c = [2, 4, 6, 8]

a.each do |x|
    puts x
end

b.each { |x| puts x }

def run_block
    yield  # runs a blocll that was passed in as "argument" for run_block
end

run_block do
    puts "Hello world"
end

run_block { puts "hi earth" }

def run_block_2(&hey)  # instead of yield, a block is passed as an argument
    # p hey    # p out hey... hey is a Proc object
    d = [3, 6, 9, 12]
    d.each do |x|
        hey.call(x)     # pass each element of our array to the block passed in the argument
    end
end

run_block_2 { |el| puts el*2}

# A block can only be used once, but a proc is an object that can be reused
# Think of proc as a block of code that can be saved to a variable

def run_two_procs(a, b)
    a.call    # .call is used to run the proc (block of code)
    b.call
end

proc1 = Proc.new do
    puts "This is proc 1"
end

proc2 = Proc.new do
    puts "This is proc 2"
end

run_two_procs(proc1, proc2)


# sort of the mixture of using yield/proc
def run_block_3
    p = Proc.new   # if new proc is not passed a code block, it looks to see if the current scope has been passed a code block and use that
    p.call                  # if current scope has not been passed a code block, there will be an error
end

run_block_3 do 
    puts "halo mundo"
end

# there are 4 main ways to call/run a block
example_proc = Proc.new do |x|
    puts "This is my proc and #{x} was passed to me"
end

example_proc.call(10)    # common way
example_proc.(20)
example_proc[30]
example_proc===40    # unusual way, but has uses in switch statements - cool trick!


many_proc = Proc.new { |x| x >= 5 }
few_proc = Proc.new { |x| x > 2 && x < 5}
couple_proc = Proc.new { |x| x==2}
none_proc = Proc.new {|x| x==0 }

0.upto(10) do |num|
    print "#{num} items is "
    case num
            when many_proc
                puts "many"
                # break        # break statements not used or else loop only does 1 iteration
            when few_proc
                puts "a few"
                # break
            when couple_proc
                puts "a couple"
                # break
            when none_proc
                puts "none at all"
                # break
            else
                puts "default...maybe 1?"
            end
end

# normally in switch statements, we have something like when 5
# behind the scenes, Ruby would check if 5===num is true
# Ruby finds which case is true and runs the block for that case 

# here, Ruby is check our_example_proc===num
# to check if it's "true", num is passed to our_example_proc

compare_proc = Proc.new do
    puts "hello proc"
end

compare_lambda = lambda do 
    puts "hello lambda"
end

# lambdas are specific types of procs - see Ruby docs for method Proc#lambda?

compare_proc.call
compare_lambda.call

# 2 key differences

# 1) lambdas enforce parity - strict about number of arguments 

compare_proc_with_arg = Proc.new do |x|
    puts "hello proc"
end

compare_lambda_with_arg = lambda do |x|
    puts "hello lambda"
end

compare_proc_with_arg.call          #=> works fine
compare_lambda_with_arg.call     #=> gives an error

# 2) 