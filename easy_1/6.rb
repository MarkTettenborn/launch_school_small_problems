# Write a method that takes one argument, a string containing 
# one or more words, and returns the given string with words 
# that contain five or more characters reversed. Each string will consist 
# of only letters and spaces. Spaces should be included only when more 
# than one word is present.

# split input string into constituent words
# initialse empty array
# iterate through constituent words
# if word contains 5 or more characters then reverse the word and add to results array
# else add word to results array

def reverse_words(string)
  words = string.split
  new_string = []
  counter = 0
  
  loop do
    break if counter == words.size
    
    if words[counter].size >= 5
      new_string << words[counter].reverse
    else
      new_string << words[counter]
    end  
    counter += 1
  end
  new_string.join(' ')
end

puts reverse_words('I have eighty words')