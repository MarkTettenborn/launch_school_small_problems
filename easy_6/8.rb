# Given an unordered array and the information that exactly one value 
# in the array occurs twice (every other value occurs exactly once), 
# how would you determine which value occurs twice? Write a method 
# that will find and return the duplicate value that is known to be 
# in the array.

# iterate through array
# initialise new array
# check if element is included in new array
# if yes, return that element
# else append element to new array

def find_dup(array)
  new_array = []
  dup_element = ''
  array.each do |element|
    if new_array.include?(element)
      dup_element = element
      break
    else
      new_array << element
    end
  end
  dup_element
end

puts find_dup([1,2,3,4,5,5])