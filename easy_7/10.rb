# Write a method that returns the next to last word in the String 
# passed to it as an argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words.

def penultimate(string)
  words = string.split(' ')
  words[-2]
end

puts penultimate('hat in a house')