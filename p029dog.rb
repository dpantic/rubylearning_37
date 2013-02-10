class Dog
def initialize(rase, name)
@breed = rase
@name = name
end

def bark
puts 'Ruff!! Ruff!!!'
end

def display
puts "I am of #{@breed} breed and my name is #{@name}"
end
end

d = Dog.new('Labrador', 'Sarplaninac')
puts "The id of d is #{d.object_id}."

if d.respond_to?("talk")
d.talk
else
puts "Sorry, d doesn't understand the 'talk' message."
end

d.bark
d.display
d = nil
d.display
d1 = nil

