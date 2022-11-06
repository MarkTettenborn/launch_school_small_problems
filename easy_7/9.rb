# Write a method that takes two Array arguments in which each Array contains 
# a list of numbers, and returns a new Array that contains the product of 
# every pair of numbers that can be formed between the elements of the two 
# Arrays. The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# iterate through array1
# iterate through array 2, multiplying each element by current element 
# of array 1

def multiply_all_pairs(array1, array2)
  new_array = []
  array1.each do |element1|
    array2.each do |element2|
      new_array << element1 * element2
    end
  end
  new_array.sort
end

puts multiply_all_pairs([1,2,3],[4,5,6])

