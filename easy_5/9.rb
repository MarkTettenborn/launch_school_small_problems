# Write a method that takes a string argument and returns a new string 
# that contains the value of the original string with all consecutive 
# duplicate characters collapsed into a single character. You may not 
# use String#squeeze or String#squeeze!.

# split string into array of characters
# create results array
# iterate through string array
# if character in string array is not identical to last element in results
# array, add to results array
# join results array

def crunch(string)
  results_array = []
  string.split('').each do |char|
    if char != results_array[-1]
      results_array << char
    end
  end
  results_array.join
end

puts crunch('ashdttjmpppp')
  