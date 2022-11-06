# Given a string of words separated by spaces, write a method that takes 
# string of words and returns a string in which the first and last letters 
# of every word are swapped.

# You may assume that every word contains at least one letter, and that 
# the string will always contain at least one word. You may also assume 
# that each string contains nothing but words and spaces

def swap_characters(sub_string)
  sub_string[0], sub_string[-1] = sub_string[-1], sub_string[0] 
  sub_string
end

def swap(string)
  new_string = string.split.map do |sub_string|
    swap_characters(sub_string)
  end
  result = new_string.join(' ')
end

puts swap('hello there')