=begin
doctest: Following value will not be displayed
>> 1951
=> 1951
=end

a = (1930...1951).to_a
puts a [rand(a.size)]

