module Cat
  def cat_name
    %w|Felix Tom Garfield Arlene Azrael Bill Bucky Heathcliff Hobbes|.sample
  end
end
class Dog
  attr_accessor :name
  @@number_of_dogs = 0
  def initialize(name = "Fido")
    @name = name
    @@number_of_dogs += 1
    self.extend Cat
  end
  def bark(bark = "YIP YIP")
    "#{bark}!"
  end
  def eat(action = "devours", food = "bacon")
    "#{@name} #{action} some #{food}."
  end
  def chase_cat(cat_name = "")
    name == "" ? "#{name} chases the cat." : "#{name} chases the cat named #{cat_name} around the house."
  end
  def self.number_of
    @@number_of_dogs
  end
end
if __FILE__ == $0
  extend Cat
  dogs = ["Sport", "Spot", "Yippy"].map { |name| Dog.new(name) }
  puts "I have #{Dog.number_of} dogs."
  dogs.each do |dog|
    puts "This dog is #{dog.name}."
    puts "Eat #{dog.name}! #{dog.eat}"
    puts "Sometimes #{dog.name} barks funny. #{dog.bark("Yelp Yelp")}"
    puts "The worst is when he chases #{cat = cat_name} around the house. #{dog.chase_cat(cat)}"
    puts
  end
end