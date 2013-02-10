class Rectangle
  attr_accessor :length, :width
 
  def initialize(length, width)
    @length = length
    @width = width
  end
 
  def area
    @length * @width
  end
 
  def perimeter
    2 * @length + 2 * @width
  end
end
 
r = Rectangle.new(23.45, 34.67)
puts "Area is = #{r.area}"
puts "Perimeter is = #{r.perimeter}"