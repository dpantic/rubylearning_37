
def convert(f)
  c = (f -32) / 1.8
format("%.2f", c).to_i
end
puts convert(32).class

first_converted_temp = convert(100)
second_converted_temp = convert(220)
total = first_converted_temp + second_converted_temp

puts "Given two tem in F: #{first_converted_temp}"
puts "The average temperature is #{total / 2}"
puts convert(32)

