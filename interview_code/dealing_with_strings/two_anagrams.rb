def char_frequency(string)
    a = Hash.new(0)
    b = string.split('')
    b.each do |x|
        x.downcase!
        a[x] +=1
    end
    return a
end

def two_anagrams(string_1, string_2)
    if char_frequency(string_1) == char_frequency(string_2)
        return "anagrams!"
    else
        return "not anagrams!"
    end
end

two_anagrams("rats", "star")
two_anagrams("bats", "hats")