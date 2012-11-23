def hello  
  'Hello'  
end  
#use the method  
puts hello  
  
# Method with an argument - 1  
def hello1(name)  
  'Hello ' + name  
end  
puts(hello1('satish'))  
  
# Method with an argument - 2  
def hello2 name2  
  'Hello ' + name2  
end  
puts(hello2 'talim')

def mtd(a=99, b=a+1)  
  [a,b]  
end  
puts mtd # displays 99, 100