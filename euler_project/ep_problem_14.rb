a = (1...100).to_a   # 837799 with 525 elements
max_length = 1
max_starter = 1
max_chain = []

def collatz_even(even_number)
    even_number / 2
end

def collatz_odd(odd_number)
    odd_number*3 + 1
end

a.each do |element|
    chain_element = element
    chain = [chain_element]
    while chain_element !=1
        if chain_element%2 == 0
            chain_element = collatz_even(chain_element)
            chain << chain_element
        elsif chain_element%2==1
            chain_element = collatz_odd(chain_element)
            chain << chain_element
        end
    end
    if chain.length > max_length
        # puts "results: "
        # puts chain.inspect
        # puts "----------------------------"
        max_length = chain.length
        max_starter = element
        max_chain = chain
    end
end


puts "----------" + max_starter.to_s + " is the longest chain with " + max_length.to_s + " elements-----------"
puts max_chain.inspect