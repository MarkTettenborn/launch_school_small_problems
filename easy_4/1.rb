# Write a method that takes two strings as arguments, determines 
# the longest of the two strings, and then returns the result of 
# concatenating the shorter string, the longer string, and the shorter 
# string once again. You may assume that the strings are of different lengths.

# identify longest string
# concatentate strings in approprate order

def short_long_short(s1, s2)
  if s1.size > s2.size
    s2 + s1 + s2
  else
    s1 + s2 + s1
  end
end

puts short_long_short('hi', 'there')