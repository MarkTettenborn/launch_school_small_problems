# Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

# Split input string into array of constituent words
# Create empty array for reversed sentence
# Take last string in array of constituent words and add to array for reversed sentence


def reverse_sentence(input_sentence)
  input_words = input_sentence.split(' ')
  reversed_words = []
  counter = 0
  
  loop do
    break if counter == input_words.size
    reversed_words[counter] = input_words[(counter*(-1)) - 1]
  
    counter += 1
  end
  
  reversed_sentence = reversed_words.join(' ')
end

puts reverse_sentence("Hello World I am here")