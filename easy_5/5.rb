# Given a string that consists of some words (all lowercased) and an 
# assortment of non-alphabetic characters, write a method that returns 
# that string with all of the non-alphabetic characters replaced by 
# spaces. If one or more non-alphabetic characters occur in a row, you 
# should only have one space in the result (the result should never have 
# consecutive spaces).

ALPHABET = ('a'..'z').to_a
  
def cleanup(string)
  new_string = []
  string.chars.each do |char|
    if ALPHABET.include?(char)
      new_string << char
    else
      new_string << ' ' unless new_string.last == ' '
    end
    new_string
  end
  new_string.join
end

puts cleanup('ehufheu&^kfjie!')