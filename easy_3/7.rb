# Write a method that returns an Array that contains every other element
# of an Array that is passed in as an argument. The values in the returned 
# list should be those values that are in the 1st, 3rd, 5th, and so on 
# elements of the argument Array.

def oddities(arr)
  arr_odd = []
  arr.each_with_index do |element, index|
    if index.even? || index == 0
      arr_odd << element
    end
  end
  arr_odd
end

puts oddities([1, 2, 4, 5])