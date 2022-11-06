# Write a method that takes an Array as an argument, and returns 
# two Arrays (as a pair of nested Arrays) that contain the first half 
# and second half of the original Array, respectively. If the original 
# array contains an odd number of elements, the middle element should 
# be placed in the first half Array.

# calculate last element to be included in first array
#     if number of elements is even then elements/2
#     else elements/2 +1
# iterate through input array until reached last element and place 
# in first array
# then put remaining elements in second array
# return two new arrays as nested arrays

def halvsies(array)
  middle_element = if array.size % 2 == 0
                    array.size/2 - 1
                  else
                    array.size/2 
                  end
  counter = 0
  first_array = []
  second_array = []
  
  loop do 
    break if counter > middle_element
    first_array << array[counter] 
    counter += 1
  end
  
   loop do 
    break if counter >= array.size
    second_array << array[counter] 
    counter += 1
  end
  
  new_array = [first_array, second_array]
  puts new_array.inspect
  
end

puts halvsies([1,2,3,4,5])
  