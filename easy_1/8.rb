# Write a method that takes one argument, an array containing integers, and 
# returns the average of all numbers in the array. The array will never be 
# empty and the numbers will always be positive integers. Your result should 
# also be an integer.

def average(array)
  (array.sum / array.size) 
end

puts average([10, 4, 6])