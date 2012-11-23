# p015elsifex.rb  
# elseif example  
  
# Original example  
#puts "Hello, what's your name?"  
#STDOUT.flush  
#name = gets.chomp  
#puts 'Hello, ' + name + '.' 
# 
#if name == 'Satish' 
#    puts 'What a nice name!!' 
#else 
#    if name == 'Sunil' 
#        puts 'Another nice name!' 
#    end 
#end 
 
# Modified example with elseif 
#å‚puts "Hello, what's your name?"  
#å‚STDOUT.flush  
#å‚name = gets.chomp  
#å‚puts 'Hello, ' + name + '.'  
#å‚  
#å‚if name == 'Satish'  
#å‚    puts 'What a nice name!!'  
#å‚elsif name == 'Sunil'  
#å‚        puts 'Another nice name!'  
#å‚end  
  
# Further modified  
puts "Hello, what's your name?"  
STDOUT.flush  
name = gets.chomp  
puts 'Hello, ' + name + '.' 
 
# || is the logical or operator 
if name == 'Satish' || name == 'Sunil' 
    puts 'What a nice name!!'  
end  

