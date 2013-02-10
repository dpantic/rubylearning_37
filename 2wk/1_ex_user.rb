=begin
doctest: This tests the output of the string conversion
>> converter(s)
=> ["Line 1: Welcome to the forum.","Line 2: Here you can learn Ruby.","Line 3: Along with other members."]
=end

def converter(s)
  
  s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n".split("\n") {|s| puts s}
end

puts converter(s)
