# Using the multiply method from the "Multiplying Two Numbers" problem, 
# write a method that computes the square of its argument (the square is
# the result of multiplying a number by itself).

def multiply(a,b)
  a * b
end

def square(c)
  multiply(c,c)
end

puts square(4)