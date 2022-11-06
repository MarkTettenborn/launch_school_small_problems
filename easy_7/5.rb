# Write a method that takes a String as an argument, and returns a new 
# String that contains the original value using a staggered capitalization 
# scheme in which every other character is capitalized, and the remaining 
# characters are lowercase. Characters that are not letters should not be 
# changed, but count as characters when switching between upper and lowercase.

# split string into array of characters
# iterate thru

def staggered_case(string)
  new_string = ''
  
  string.chars.each_with_index do |char, index|
    if index.odd?
      new_string << char.upcase
    else
      new_string << char.downcase
    end
  end

new_string

end

puts staggered_case('sdfase DEWDEWD')