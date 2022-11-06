# Write a method that takes one argument, a positive integer, and 
# returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.

# create an empty string
# if input >= 1, then add 1 to string
# if input >= 2, add 0 to string
# continue until length of string is equal to input


def stringy(integer, start_with_1 = 1)
  result = []
  start_number = start_with_1 == 1 ? 1:0
  next_number = start_with_1 == 1 ? 0:1
  integer.times do |index|
    number = index.even? ? start_number:next_number
    result << number
  end
  result.join
end

puts stringy(5, 0)
puts stringy(7, 1)
puts stringy(3)