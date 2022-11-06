# Write a method that computes the difference between the square of the 
# sum of the first n positive integers and the sum of the squares of the 
# first n positive integers.

def sum_square_difference(n)
  squares = 0
  integers = 0
  (1..n).each do |num|
    squares += num*num
    integers += num
  end
  squares - integers * integers
end
puts sum_square_difference(10)
    
    