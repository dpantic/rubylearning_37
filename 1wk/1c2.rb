def convert_temp(input)
type = input.slice(-1).upcase
temp = input.slice(0..2).to_f
case type
when "F"
puts "#{input} converts to #{fahrenheit(temp)}."
  when "C"
    puts "#{input} converts to #{celsius(temp)}."
  else
    puts "Please enter a temperature in the proper format."
  end
end

def fahrenheit(temp)
  "#{format("%.2f", (temp-32) * 5.0 / 9)} celsius"
end
 
def celsius(temp)
  "#{format("%.2f", temp * 9.0 / 5 + 32)} fahrenheit"
end
 
puts "This is a temperature conversion application. It converts Farenheit to Celsius, and Celsius to Farenheit"
puts "To convert Farenheit to Celsius, format your input like 32F"
puts "To convert Celsius to Farenheit, format your input like 0C"
puts "Enter the temperature you want to convert"
temp = gets.chomp
 
convert_temp(temp)
