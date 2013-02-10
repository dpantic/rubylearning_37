class Person
def initialize(age)
@age = age
end
def age
@age
end
def compare_age(c)
if c.age > age
	"The other object's age is bigger."
else
	"The other object's age is same or smaller."
end
end
protected :age
end

chris = Person.new(25)
marco =Person.new(34)
dejan = Person.new(41)

puts chris.compare_age(marco)
#puts dejan.compare_age(chris)
