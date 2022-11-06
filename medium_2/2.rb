# A collection of spelling blocks has two letters per block, as shown in 
# this list:

# B:O   X:K   D:Q   C:P   N:A
# G:T   R:E   F:S   J:W   H:U
# V:I   L:Y   Z:M

# This limits the words you can spell with the blocks to just those words
# that do not use both letters from any given block. Each letter in each 
# block can only be used once.

# Write a method that returns true if the word passed in as an argument can 
# be spelled from this set of blocks, false otherwise.

# iterate through list of blocks
# check if both letters in block are used in word
# if so, return false
# else move to next block

BLOCKS = "B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M"

def blocks_as_array_of_strings(string)
  block_array = string.split
  block_array.map! do |element|
    element.delete(':')
  end
end

def block_word?(word)
  blocks = blocks_as_array_of_strings(BLOCKS)
  included_blocks = blocks.select do |block|
    block[0].include?(word.upcase) && block[1].include?(word.upcase)
  end
  if included_blocks == []
    true
  else
    false
  end
end

puts block_word?('BATCH') == true
puts block_word?('BUTCH') == false
puts block_word?('jest') == true