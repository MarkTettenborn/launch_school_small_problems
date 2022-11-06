# Write a method that takes an Array as an argument, and reverses its 
# in place; that is, mutate the Array passed into this method. The return 
# value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# iterate through the array
# replace each element with the equivalent element from the other end - i.e. 
# first with last, second with second last and so on
# break when middle of array is reached 

def reverse!(array)
  counter_a = 0
  counter_b = -1
  while counter_a < array.size/2
    array[counter_a], array[counter_b] =  array[counter_b], array[counter_a]
    counter_a += 1
    counter_b -= 1
  end
  array
end

puts reverse!([1, 2, 4])
