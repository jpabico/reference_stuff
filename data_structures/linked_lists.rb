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

    def delete(val)
        current = @head
        if current.value == val
            # If the head is the element to be delete, the head needs to be updated
            @head = @head.next_node
        else
            # ... x -> y -> z
            # Suppose y is the value to be deleted, you need to reshape the above list to :
            #   ... x->z
            # ( and z is basically y.next_node )
            current = @head
            while (current != nil) && (current.next_node != nil) && ((current.next_node).value != val)
                current = current.next_node
            end 
            if (current != nil) && (current.next_node != nil)
                current.next_node = (current.next_node).next_node
            end
        end
    end

    def display
        current = @head
        full_list = []
        while current.next_node !=nil
            full_list += [current.value.to_s]
            current = current.next_node
        end
        full_list += [current.value.to_s]
        puts full_list.join('->')
    end

    # before/after methods for a specific node
    def insert_before(reference_node, inserted_node)
    end

    def insert_after(reference_node, inserted_node)
    end

    # before/after methods for a specific node
    def remove_before(reference_node, node_to_remove)
    end

    def remove_after(reference_node, node_to_remove)
    end


end

p list1 = Linklist.new('a')
list1.display
list1.add('b')
list1.display    # a->b
list1.add('c')
list1.display   # a->b->c

# consider using a sentinel to make scouting pointers easier
# method for copying list (used before sorting)
# method for sorting list using insertion sort
# method for sorting list using selection sort 
# circular linked list 
# mark each cell visited - needs another attribute...easier to add visited cells to a hash table
# check hash table - if present, then it has been visited
# reverse linked list - use remove after method to build a new list 
