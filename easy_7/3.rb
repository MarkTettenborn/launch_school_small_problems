# Write a method that takes a single String argument and returns a new 
# string that contains the original value of the argument with the first 
# character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

def word_cap(string)
  words = string.split(' ')
  cap_words = words.map do |word| 
    word.capitalize
  end
  cap_words.join(' ')
end

puts word_cap('ssjdhsi sdhisdji irgjtr')
