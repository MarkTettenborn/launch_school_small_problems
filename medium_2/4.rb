# Write a method that takes a string as an argument, and returns true 
# if all parentheses in the string are properly balanced, false otherwise. 
# To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# doesn't check for matching pairs
def balanced?(string)
  string.count('(') == string.count(')')
end

#launch solution
def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if char == '('
    parens -= 1 if char == ')'
    break if parens < 0
  end

  parens.zero?
end

