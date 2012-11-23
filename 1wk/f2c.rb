def convert(c2f)
f = c2f.to_i * 9 / 5 +32
  
end
 print "Enter a Celsius value: "
c2f = gets.chomp

puts "#{c2f} degrees Fahrenheit equals #{"%.2f" % convert(c2f)} degrees Celsius"