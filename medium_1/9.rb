# Rewrite your recursive fibonacci method so that it computes 
# its results without recursion.

# def fibonacci(nth)
#  return 1 if nth <= 2
#  fibonacci(nth - 1) + fibonacci(nth - 2)
# end

def fibonacci(nth)
  sequence = [1, 1]
  
  until sequence.size == nth
    sequence << sequence[-1] + sequence[-2]
  end
  sequence[-1]
end

puts fibonacci(20)

# Launch solution
# 
# def fibonacci(nth)
#   first, last = [1, 1]
#  3.upto(nth) do
#    first, last = [last, first + last]
#  end

#  last
# end
