# Write a method that takes a string, and returns a new string in which 
# every consonant character is doubled. Vowels (a,e,i,o,u), digits, 
# punctuation, and whitespace should not be doubled.

def double_consonants(string)
  new_string = ''
  string.each_char do |char|
    if char =~ /[aeiou]/
      new_string << char*2
    else
      new_string << char
    end
  end
  new_string
end

puts double_consonants('nuwenh flwej')