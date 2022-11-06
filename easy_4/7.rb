# Write a method that takes a String of digits, and returns the 
# appropriate number as an integer. 

# split the string into an array of its characters
# create array of strings '0' to '9'
# create array of integers 0-9
# iterate through array of input characters 
# for each input character, identify the index of the identical string
# in the strings 0-9 array.
# append integer with the same index from the integer array to a new array
# join the new array

def string_to_integer(string)
  input_string_array = string.chars
  string_array = %w(0 1 2 3 4 5 6 7 8 9)
  integer_array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  results_array = []
  input_string_array.each do |input_string|
    string_array.each_with_index do |string, index|
      if input_string == string
        results_array << integer_array[index]
      end
    end
  end
  value = 0
  results_array.each { |digit| value = 10 * value + digit }
  value
end

puts string_to_integer('1234')*2
