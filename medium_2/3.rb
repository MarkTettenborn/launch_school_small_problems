# Write a method that takes a string, and then returns a hash that contains 
# 3 entries: one represents the percentage of characters in the string that 
# are lowercase letters, one the percentage of characters that are uppercase 
# letters, and one the percentage of characters that are neither.

# You may assume that the string will always contain at least one character.


def letter_percentages(string)
  hash = {:uppercase => 0, :lowercase => 0, :other => 0}
  string.chars.each do |char|
    case 
    when (/[A-Z]/).include?(char)
      hash[:uppercase] += 1
    when (/[a-z]/).include?(char)
      hash[:lowercase] += 1
    else
      hash[:other] += 1
    end
  end
  puts hash
  percent_hash = {}
  percent_hash[uppercase_percent] = hash[:uppercase].to_f / string.length
  percent_hash[lowercase_percent] = hash[:lowercase].to_f / string.length
  percent_hash[other_percent] = hash[:other].to_f / string.length
  puts percent_hash
  end

letter_percentages('abCdef 123')