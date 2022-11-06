# Write a method that takes two Arrays as arguments, and returns an 
# Array that contains all of the values from the argument Arrays. There 
# should be no duplication of values in the returned Array, even if there 
# are duplicates in the original Arrays.

# iterate through second array
# if element is not identical to any element in first array, append to 
# first array

def merge(array1, array2)
  array2.each do |element|
    if !array1.include?(element)
      array1 << element
    end
  end
  array1
end

puts merge([1,2,5], [1,3,4])
  