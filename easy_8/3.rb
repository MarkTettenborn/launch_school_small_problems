# Write a method that returns a list of all substrings of a string that 
# start at the beginning of the original string. The return value should 
# be arranged in order from shortest to longest substring.

def leading_substrings(string)
  substrings = []
  
  1.upto(string.length) do |count|
    substrings << string.slice(0, count)
  end
  
  substrings
end

puts leading_substrings('my quick hen')