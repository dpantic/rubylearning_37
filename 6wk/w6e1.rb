class Person
  def initialize(balance)
    @balance = balance
  end
  attr_reader :balance
  def show_balance
    balance
  end
end

name = Person.new(40000)
puts name.show_balance
