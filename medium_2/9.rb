# Write a method that takes an Array as an argument, and sorts that 
# Array using the bubble sort algorithm as just described. Note that 
# your sort will be "in-place"; that is, you will mutate the Array passed 
# as an argument. You may assume that the Array contains at least 2 elements.

def bubble_sort!(array)
  loop do
  counter = 0
  swaps = 0
  until counter == array.length - 1
    if array[counter] > array[counter + 1]
      array[counter], array[counter + 1] = array[counter + 1], array[counter]
      swaps += 1
    end
    counter += 1
  end
  break if swaps == 0
  end
  array
end

puts bubble_sort!(%w(Sue Pete Alice Tyler Rachel Kim Bonnie))