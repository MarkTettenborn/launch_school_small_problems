# Write a method that takes an array of strings, and returns an array of 
# the same string values, except with the vowels (a, e, i, o, u) removed.

def remove_vowels(string)
  string.gsub(/[aeiouAEIOU]/, '') 
end

puts remove_vowels('Every Person')