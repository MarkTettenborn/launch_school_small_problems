# Write a method that searches for all multiples of 3 or 5 that lie between 
# 1 and some other number, and then computes the sum of those multiples. 
# For instance, if the supplied number is 20, the result should be 
# 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# convert input to integer
# initialise empty array
# iterate over range from 1 to input
# for each number in this range determine whether it is a multiple of 3 or 5
# append these numbers to the array
# sum numbers in the array

def multisum(num)
  arr = []
  (1..num.to_i).each do |element|
  if (element % 3 == 0) || (element % 5 == 0) 
    arr << element
  end
end
  arr.sum
end

puts multisum(99)
