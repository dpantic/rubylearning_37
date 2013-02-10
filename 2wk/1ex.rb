#s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

# from: eelco ten have
#s.each_line.with_index(1) do |line,index|
# puts "Line #{index}:#{line}"
#end

#here is another way, splitting each line into an array.
s.split("\n").each_with_index do |line, index|
  puts "Line #{ index.next }: #{ line }"
end

s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n".split("\n") {|s| puts s}

#def split_string
#	s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
#	s.split(/\n/)
#end
# 
#split_string.each { |s| puts "Line 1: #{s}" }