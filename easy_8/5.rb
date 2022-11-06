# Write a method that returns a list of all substrings of a string that are 
# palindromic. That is, each substring must consist of the same sequence of 
# characters forwards as it does backwards. The return value should be arranged 
# in the same sequence as the substrings appear in the string. Duplicate 
# palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the 
# previous exercise.

# For the purposes of this exercise, you should consider all characters and 
# pay attention to case; that is, "AbcbA" is a palindrome, but neither "Abcba" 
# nor "Abc-bA" are. In addition, assume that single characters are not 
# palindromes.

def leading_substrings(string)
  lead_substrings = []
  
  1.upto(string.length) do |count|
    lead_substrings << string.slice(0, count)
  end
  lead_substrings
end

def substrings(string)
  all_substrings = []
  (0...string.size).each do |start_index|
      current_substring = string[start_index..-1]
     all_substrings.concat(leading_substrings(current_substring))
  end
  all_substrings
end

def palindrome?(string)
  (string == string.reverse) && (string.length > 1)
end

def all_palindrome_substrings(string)
  subs = substrings(string)
  result = []
  subs.each do |substring|
    result << substring if palindrome?(substring)
end
result
end

puts all_palindrome_substrings('122143245432532ergferwgvewrverw')
puts palindrome?('1221')