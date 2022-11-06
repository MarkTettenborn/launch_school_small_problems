# Write a method that returns true if the string passed as an argument 
# is a palindrome, false otherwise. A palindrome reads the same forward 
# and backward. For this exercise, case matters as does punctuation and spaces.

# reverse string
# check if reversed string is identical to original
# return true if so

def palindrome?(string)
  string.reverse == string
end

puts palindrome?('sod')