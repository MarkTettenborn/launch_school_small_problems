# Write a method that takes a string, and returns a new string in 
# which every character is doubled.

def repeater(string)
  array = string.chars.map {|char| char*2}
  new_string = array.join
end

puts repeater('nuwenh flwej')