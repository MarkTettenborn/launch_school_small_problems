# Write a method that takes an Array of numbers and then returns the sum
# of the sums of each leading subsequence for that Array. You may assume 
# that the Array always contains at least one number.

def sum_of_sums(array)
  running_total = 0
  new_array = []
  array.each do |element|
    running_total += element
    new_array << running_total
  end
  new_array.sum
end

puts sum_of_sums([1,5,7,3])
