def try 
  if block_given? 
    yield 
  else 
    puts "no block" 
  end 
end 
t
ry do puts "hello" end