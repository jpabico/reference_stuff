my_file = File.open('sample_data.txt', 'r')

b = my_file.map do |x|
     x
end

c = b[0].split("")


d = c.map do |x|
    unless x.to_i == 0
        x.to_i
    end
end

# http://www.techotopia.com/index.php/Working_with_Files_in_Ruby
