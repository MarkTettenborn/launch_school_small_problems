# Modify the word_sizes method from the previous exercise to exclude 
# non-letters when determining word size. For instance, the length of 
# "it's" is 3, not 4.

def word_sizes(string)
  word_array = string.gsub(/[^a-z]/, ' ').split(' ')
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

puts word_sizes('quick** brown fox')