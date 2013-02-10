f = File.new("newtestfile.txt")
puts f.readline # => "This is line one\n" 
f.rewind # => 0
puts f.lineno # => 0
puts f.readline # => "This is line one\n"
