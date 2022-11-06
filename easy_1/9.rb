# Write a method that takes one argument, a positive integer, and returns the sum of its digits.

# Turn the integer into a string
# Split the string into substrings
# Turn the substrings into integers
# Sum the integers

def sum(integer)
  digits = integer.to_s.split('')
  puts digits.inspect
 
  digits.map! {|digit| digit.to_i}
  
  puts digits.inspect
  sum = digits.sum
end

puts sum(123)