class Triangle
  attr_reader :a, :b, :c

  def initialize(a,b,c)
      @a = a
      @b = b
      @c = c
  end


  def kind
    if [a,b,c].each {|x| x <= 0}
  raise TriangleError if a <= 0 or a + b <= c or b + c <= a or c + a <= b
  return :equilateral if a == b && b == c
  return :isosceles if a == b || b == c || a == c
  return :scalene
  end
  end
  

  class TriangleError < StandardError
    # triangle error code
  end
end
# end


# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal