# Write a method that takes a String of digits, and returns the appropriate 
# number as an integer. The String may have a leading + or - sign; if the 
# first character is a +, your method should return a positive number; if 
# it is a -, your method should return a negative number. If no sign is given, 
# you should return a positive number.

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  '+' => '+', '-' => '-'
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  
  if ['+', '-'].include? digits[0]
    sign = digits.shift
  end
  
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
  
  if sign == '-'
    value *= -1
  end
  value
end

puts string_to_integer('-1234')*2