# Write a method that takes a non-empty string argument, and returns the 
# middle character or characters of the argument. If the argument has an 
# odd length, you should return exactly one character. If the argument has 
# an even length, you should return exactly two characters.

def center_of(string)
  if string.size.odd?
    string[string.size/2]
  else
    string[(string.size/2 - 1)..(string.size/2)]
  end
end

puts center_of('Launch-Schools')