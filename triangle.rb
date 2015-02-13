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
def triangle(a, b, c)
  if a == 0 || b == 0 || c == 0
    raise TriangleError, "One or more sides is zero!"
  end
  if a < 0 || b < 0 || c < 0
    raise TriangleError, "One or more sides is negative!"
  end
  unless a + b > c && b + c > a && c + a > b
    raise TriangleError, "Sides don't satisfy triangle inequality."
  end
  if a == b && b == c
    return :equilateral
  end
  if a == b || a == c || b == c 
    return :isosceles
  end
  :scalene
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
