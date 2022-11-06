# In the previous exercise, you developed a method that converts non-negative 
# numbers to strings. In this exercise, you're going to extend that method 
# by adding the ability to represent negative numbers as well.

# Write a method that takes an integer, and converts it to a string representatio

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  if number < 1
    sign = '-'
  else
    sign = ''
  end
  
  if number < 1
    number *= -1
  end
  
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result.prepend(sign)
end

puts integer_to_string(1234)