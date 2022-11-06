# Write a method that takes two Array arguments in which each Array contains 
# a list of numbers, and returns a new Array that contains the product of 
# each pair of numbers from the arguments that have the same index. You may 
# assume that the arguments contain the same number of elements.

def multiply_lists(array1, array2)
  new_array = []
  counter = 0
  loop do
    break if counter == array1.size
    new_array << (array1[counter] * array2[counter])
    counter += 1
  end
  new_array
end

puts multiply_lists([1,2,3], [4,5,6])
    