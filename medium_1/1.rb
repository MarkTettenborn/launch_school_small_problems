# Write a method that rotates an array by moving the first element to the 
# end of the array. The original array should not be modified.

# Do not use the method Array#rotate or Array#rotate! for your implementation.

def rotate_array(array)
  array << array.shift
end

puts rotate_array([7, 3, 5, 2, 9, 1])
puts rotate_array(['a', 'b', 'c'])