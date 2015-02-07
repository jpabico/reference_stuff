# Completed, not refactored

def frequency_counter(input_string)
    @input_chars = input_string.split("")
    @freq_hash = Hash.new(0)
    @input_chars.each do |letter|
        @freq_hash[letter]+=1
    end
    return @freq_hash
end

a = "mississippi is not here"
frequency_counter(a)
