# Write a method that combines two Arrays passed in as arguments, and 
# returns a new Array that contains all elements from both Array 
# arguments, with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they 
# have the same number of elements.

# assign index 0 of array1 to index 0 of new array
# assign index 0 of array2 to index 1 of new array
# break when new array is 2* size of input arrays

def interleave(array1, array2)
  new_array = []
  new_array_counter = 0
  array1_counter = 0
  array2_counter = 0

  while new_array_counter <= array1.size * 2
  
    new_array[new_array_counter] = array1[array1_counter]
    new_array_counter += 1 
    array1_counter += 1
  
    new_array[new_array_counter] = array2[array2_counter]
    new_array_counter += 1
    array2_counter += 1
  end
  
  new_array

end

puts interleave([1,3,5], [2,4,6])

