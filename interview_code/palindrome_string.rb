def palindrome_string(input_string)
    a = input_string.split("")
    b = a.reverse
    if a ==b
        return "Palindrome!"
    else
        return "Not palindrome..."
    end
end

palindrome_string("abcdefg")
palindrome_string("abcdcba")