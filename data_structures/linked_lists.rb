class Node
    attr_accessor :value, :next_node
    def initialize(value, next_node)
        @value = value
        @next_node = next_node
        puts 'initialized a node with a value: ' + @value.to_s
    end
end

class Linklist

    # initializes a new node at the head
    def initialize(value)
        @head = Node.new(value, nil)
    end

    # go to the end of the list and insert new node at the tail
    def add(value)
        current = @head
        while current.next_node != nil
            current = current.next_node
        end
        current.next_node = Node.new(value, nil)
        self
    end

end