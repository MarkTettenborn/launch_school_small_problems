# Write a method that takes a positive integer or zero, and converts it to 
# a string representation.

DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9',
}

def integer_to_string(integer)
  characters = integer.digits.reverse.map { |digit| DIGITS[digit] }
  characters.join
end

puts integer_to_string(125).inspect

  
 