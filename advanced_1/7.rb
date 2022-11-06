# Write a method that takes two sorted Arrays as arguments, and returns a 
# new Array that contains all elements from both arguments in sorted order.

# You may not provide any solution that requires you to sort the result 
# array. You must build the result array one element at a time in the 
# proper order.

# Your solution should not mutate the input arrays.

# compare first elements of each array
# append lowest element to results array
# compare remaining first element to second element of other array
# append lowest elemt ...
# once all elements of one array are used, append remaining elements of 
# the other array

# can't use Array.shift as this would mutate input arrays

def merge(array1, array2)

  results = []
  counter_array1 = 0
  counter_array2 = 0

  loop do
    break if counter_array1 == array1.size
    break if counter_array2 == array2.size
    
    if array1[counter_array1] < array2[counter_array2]
      results << array1[counter_array1]
      counter_array1 += 1
    else
      results << array2[counter_array2]
      counter_array2 += 1
    end
  end
  
  if counter_array1 < array1.size 
    results << array1[counter_array1..-1]
  elsif counter_array2 < array2.size 
    results << array2[counter_array2..-1]
  end
    
  results.flatten
end
  
  puts merge([1, 1, 3], [2, 2]).inspect

  