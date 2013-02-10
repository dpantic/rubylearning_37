class Dog
  attr_reader :name
 
  def initialize(name)
    @name = name
  end
 
  def bark
    "Ruff! Ruff!"
  end
 
  def eat
    "#{@name} is eating."
  end
 
  def chase_cat
    "#{@name} is chasing a cat."
  end
end
 
dog = Dog.new("Koka")
puts dog.name       # Koka
puts dog.bark       # Ruff! Ruff!
puts dog.eat        # Koka is eating.
puts dog.chase_cat  # Koka is chasing a cat.
#puts dog.eat('the sofa')