# Write a method named include? that takes an Array and a search value 
# as arguments. This method should return true if the search value is in 
# the array, false if it is not. You may not use the Array#include? method 
# in your solution.

# iterate through array
# check whether element is identical to search value
# if yes then return true


def include?(array, value)
  result = false
  array.each do |element|
    if element == value
      result = true
    end
  end
  result
end

puts include?([1,2,3], 2)  