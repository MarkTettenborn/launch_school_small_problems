# Write a method that takes a string, and then returns a hash that 
# contains 3 entries: one represents the number of characters in the 
# string that are lowercase letters, one the number of characters that 
# are uppercase letters, and one the number of characters that are neither.

# initialise counters for uppercase letters, lowercase letters and other characters
# initialise empty hash
# iterate over string (using each)
# increment appropriate counter (case)
# set key value pairs using counters
# return hash

def letter_case_count(string)
  uppercase_letters = 0
  lowercase_letters = 0
  other_characters = 0
  counts = {}
  
string.chars.each do |character|
  if ('A..Z').include?(character)
    uppercase_letters += 1
  elsif ('a..z').include?(character)
    lowercase_letters += 1
  else
    other_characters += 1
  end
end

counts[:uppercase_letters] = uppercase_letters
counts[:lowercase_letters] = lowercase_letters
counts[:other_characters] = other_characters
counts
end

puts letter_case_count('AAAaaa***')