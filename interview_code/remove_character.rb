def remove_character(input_string, target)
    a = input_string.split("")
    d = a.map do |x|
        x.downcase
    end
    e = target.downcase
    length = a.length - 1
    b = a.dup
    p target
    for i in length.downto(0)
        if d[i]== e
            b.slice!(i, 1)
        end
    end
    return b
end

remove_character("Tom is going to the dentist!", "t")