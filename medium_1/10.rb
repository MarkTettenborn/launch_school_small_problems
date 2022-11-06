# In the previous exercise, we developed a procedural method for computing 
# the value of the nth Fibonacci numbers. This method was really fast, 
# computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

# In this exercise, you are going to compute a method that returns the 
# last digit of the nth Fibonacci number.

def fibonacci(nth)
  first, last = [1, 1]
  3.upto(nth) do
    first, last = [last, first + last]
  end
  last
end

def fibonacci_last(nth)
  nth_term = fibonacci(nth)
  nth_term.digits.first
end

puts fibonacci_last(100) 