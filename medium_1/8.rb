# Write a recursive method that computes the nth Fibonacci number, 
# where nth is an argument to the method.

# Fibonacci sequence
# F(1) = 1
# F(2) = 1
# F(n) = F(n - 1) + F(n - 2) where n > 2

# Launch solution 

def fibonacci(nth)
  return 1 if nth <= 2
  fibonacci(nth - 1) + fibonacci(nth - 2)
end

puts fibonacci(12)
  