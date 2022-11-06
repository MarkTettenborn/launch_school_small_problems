# Write a method that calculates and returns the index of the first 
# Fibonacci number that has the number of digits specified as an 
# argument. (The first Fibonacci number has index 1.)

# calculate next number in sequence
# add to array
# check if last number in array has number of digits specified in input
# if yes, return index
# if no, continue to next number in sequence

def fibonnaci_sequence(term)
  sequence = [1, 1]
  loop do
    break if sequence.size == term
    sequence << sequence[-1] + sequence[-2]
  end
  puts sequence.inspect
  sequence
end

def find_fibonnaci_index_by_length(length)
  term = 3
  loop do
    break if fibonnaci_sequence(term)[-1].digits.length >= length
    term += 1
  end
    fibonnaci_sequence(term).length - 1
end


 puts find_fibonnaci_index_by_length(5)
