# Write a method that determines and returns the ASCII string value 
# of a string that is passed in as an argument. The ASCII string value 
# is the sum of the ASCII values of every character in the string. 
# (You may use String#ord to determine the ASCII value of a character.)

def ascii_value(string)
  value = 0
  string.chars.each do |char|
    value += char.ord
  end
  value
end
puts ascii_value('Four score')