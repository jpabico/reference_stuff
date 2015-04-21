# Implement a Stack class using two queues.

# You may assume you have a queue class with the five methods listed below.

# Queue: First in, first out

# first
# last
# enqueue(item) #add
# dequeue #remove
# is_empty?

# Stack: Last in, first out

# peek
# pop #remove
# push(item) #add
# is_empty?


class Kyoo

    def initialize
        @queue = []
    end

    def first
        @last_index = @queue.length  - 1
        return @queue[@last_index]
    end

    def last
        @first_index = 0
        return @queue[@first_index]
    end

    def enqueue(item)
        @queue.unshift(item)
    end

    def dequeue
        @queue.pop
    end

    def is_empty?
        if @queue.length ==0
            return true
        else
            return false
        end
    end
        
    end

    
end

class Staakk

    def initialize
        @queue1 = Queue.new
        @queue2 = Queue.new
    end

end

a = Kyoo.new
a.enqueue('a')
a.enqueue('b')
a.enqueue('c')
a.first
a.last
a.dequeue
a.display
a.dequeue
a.is_empty?
a.dequeue
a.is_empty?
