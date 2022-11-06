# Write a method that takes an Array, and returns a new Array with the 
# elements of the original list in reverse order. Do not modify the 
# original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the 
# method you wrote in the previous exercise.

# iterate through array (using each)
# place each element at end of a new array
# return new array

def reverse(array)
  reversed_array = []
  array.each do |element|
    reversed_array.unshift(element)
  end
  reversed_array
end

puts reverse([1, 2, 3, 4])

