# Write a method that returns a list of all substrings of a string. The 
# returned list should be ordered by where in the string the substring 
# begins. This means that all substrings that start at position 0 should 
# come first, then all substrings that start at position 1, and so on. 
# Since multiple substrings will occur at each position, the substrings at 
# a given position should be returned in order from shortest to longest.

# You may (and should) use the leading_substrings method you wrote in 
# the previous exercise:

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

puts substrings('quick brown fox')
