# Write a method that takes a sentence string as input, and returns 
# the same string with any sequence of the words 'zero', 'one', 'two', 
# 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted 
# to a string of digits.

# split string into array of words
# iterate through words


def word_to_digit(string)
  words = string.split()
  words.map! do |word|
    case word
    when 'zero' then word = '0'
    when 'one' then word = '1'
    when 'two' then word = '2'
    when 'three' then word = '3'
    when 'four' then word = '4'
    when 'five' then word = '5'
    when 'six' then word = '6'
    when 'seven' then word = '7'
    when 'eight' then word = '8'
    when 'nine' then word = '9'
    else word
    end
  end
  words.join(' ')
end

puts word_to_digit('Please call me at five five five one two three four. Thanks.') 

# Launch solution

DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(words)
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
  end
  words
end