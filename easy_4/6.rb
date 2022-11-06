# Write a method that takes an Array of numbers, and returns an Array 
# with the same number of elements, and each element has the running 
# total from the original Array.

# iterate through array
# calculate running total (by adding current element to previous total)
# append running total to new array

def running_total(array)
  new_array = []
  total = 0
  array.each do |num|
    total += num
    new_array << total
  end
  new_array
end

puts running_total([1, 4, 6])
    