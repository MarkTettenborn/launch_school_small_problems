# A triangle is classified as follows:

# - equilateral All 3 sides are of equal length
# - isosceles 2 sides are of equal length, while the 3rd is different
# - scalene All 3 sides are of different length

# To be a valid triangle, the sum of the lengths of the two shortest sides 
# must be greater than the length of the longest side, and all sides must 
# have lengths greater than 0: if either of these conditions is not satisfied, 
# the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as 
# arguments, and returns a symbol :equilateral, :isosceles, :scalene, or 
# :invalid depending on whether the triangle is equilateral, isosceles, 
# scalene, or invalid.

def triangle(side1, side2, side3)
  array = [side1, side2, side3]
  array_sort = array.sort
  if (side1 || side2 || side3) == 0 ||
    array_sort[2] >= (array_sort[0] + array_sort[1])
    :invalid
  else
    case
    when side1 == side2 && side2 == side3
    :equilateral
    when (side1 == side2 && side3 != side1) || (side1 == side3 && side3 != side3) ||
       (side2 == side3 && side3 != side1)
    :isosceles
    when side1 != side2 && side2 != side3
    :scalene
    end
  end
end

# launch solution

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]
  largest_side = sides.max

  case
  when 2 * largest_side >= sides.reduce(:+), sides.include?(0)
    :invalid
  when side1 == side2 && side2 == side3
    :equilateral
  when side1 == side2 || side1 == side3 || side2 == side3
    :isosceles
  else
    :scalene
  end
end

puts triangle(3, 3, 3) == :equilateral
puts triangle(3, 3, 1.5) == :isosceles
puts triangle(3, 4, 5) == :scalene
puts triangle(0, 3, 3) == :invalid
puts triangle(3, 1, 1) == :invalid