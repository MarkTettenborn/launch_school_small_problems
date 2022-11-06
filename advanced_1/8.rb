# Sort an array of passed in values using merge sort. You can assume that 
# this array may contain only one type of data. And that data may be 
# either all numbers or all strings.

# Merge sort is a recursive sorting algorithm that works by breaking down 
# the array elements into nested sub-arrays, then recombining those nested 
# sub-arrays in sorted order. It is best shown by example. For instance, 
# let's merge sort the array [9,5,7,1]. 

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


def merge_sort(array)
  array = array.each_slice(array.size/2).to_a
  
  array.map! do |sub_array|
    sub_array.each_slice(array.size/2).to_a
  end
  
  puts array.inspect
  array_size = array.size - 1
  puts array_size
  (0...array_size).each do |num|
    merge(array[num], array[num+1])
  end
puts array.inspect
end

merge_sort([9, 5, 7, 1, 4, 6, 8])

puts merge([9], [5]).inspect