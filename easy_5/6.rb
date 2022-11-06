# Write a method that takes a string with one or more space separated words 
# and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# separate string into array of words
# initialise empty hash
# iterate through array
# measure length of word
# if no words of that length in the hash, create entry with key = word length
# and value = 1
# if word already in hash, increment value by 1

def word_sizes(string)
  word_array = string.split(' ')
  hash = {}
  word_array.each do |word|
    if hash.key?(word.length)
      hash[word.length] += 1
    else
      hash[word.length] = 1
    end
  end
  hash
end

puts word_sizes('quick brown fox')
  