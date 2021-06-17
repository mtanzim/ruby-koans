# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
class TriangleError < StandardError
end

def triangle(a, b, c)
  if [a,b,c].any? {|side| side <= 0 }
    raise TriangleError, "lengths cannot be less than or equal to zero"
  end

  if (a + b <= c) or (a + c <= b) or (b + c <= a)
    raise TriangleError, "Property violation: the sum of the length of any two sides of a triangle is greater than the length of the third side."
  end



  if a==b and b ==c
    return :equilateral
  elsif a != b and a != c and b!= c
    return :scalene
  else
    return :isosceles
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
