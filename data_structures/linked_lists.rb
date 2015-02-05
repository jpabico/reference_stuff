# Completed, not refactored

class Node
    #attr_accessor :node, :nexted

    def initialize(node, nexted = nil)
        @node = node
        @nexted = nexted
    end

    #wrote out attr_accessors explicitly
    def node
        @node
    end

    def node=(string)
        @node = string
    end

    def nexted
        @nexted
    end

    def nexted=(string)
        @nexted = string
    end

    # displays linked list given a starting point
    def self.node_list(node, msg = nil)
        msg ||= ""
        return msg[0..-4] if node.nil?
        node_list(node.nexted, msg << "#{node.node} ->")
    end

    # reverses order of linked list given a starting point
    def self.reverse(node)
        # edge case of one node
        return node if node.nexted.nil?

        head = node.nexted
        p head.node
        swap = node
        p swap.node = node
        node.nexted = nil
        link = head.nexted
        p link.node

        # example a,b->b,c
        # head = stores value of old link in temp variable = b
        # swap = stores value of old head in temp variable = a
        # node.next = erases value of old link = nil
        # link = variable to store head of node which links TO the new head = c
  
        while link != nil
            head.nexted = swap
            swap = head
            head = link
            link = link.nexted
        end

        head.nexted = swap
        head
    end
end

abby = Node.new("abby")
bob = Node.new("bob")
carol = Node.new("carol")
dave = Node.new("dave")
evan = Node.new("evan")

#example
abby.nexted=bob
bob.nexted=carol
carol.nexted=dave
dave.nexted = evan
evan.nexted = nil

abby    #=> <Node:0x007f86e9a213c8 @node="abby", @next=#<Node:0x007f86e9a0baa0 @node="bob", @next=#<Node:0x007f86e99f88b0 @node="carol", @next=#<Node:0x007f86e99e6750 @node="dave", @next=#<Node:0x007f86e9985720 @node="evan", @next=nil>>>>>
abby.node     #=> "abby"
carol.nexted     #=> <Node:0x007febca19b0f0 @node="dave", @next=#<Node:0x007febca172100 @node="evan", @next=nil>>
carol.nexted.node     #=> "dave"
carol.nexted.class     #=> object
carol.nexted.nexted     #=>  <Node:0x007ff4fc98b2c0 @node="evan", @next=nil>
Node.node_list(abby)  #=>  "abby ->bob ->carol ->dave ->evan"
Node.node_list(carol)  #=>  "carol ->dave ->evan"

# reverse the order of the list
Node.reverse(abby)

# now the list is reversed
Node.node_list(abby)  #=> "abby"
Node.node_list(evan) #=> "evan ->dave ->carol ->bob ->abby"

# reverse code comes from -> http://matt.weppler.me/2013/08/14/implementing-a-linked-list-in-ruby.html
