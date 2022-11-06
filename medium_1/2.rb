# Write a method that can rotate the last n digits of a number.

# 3 elements:
#   digits to the left of -nth digit returned as is
#   digits to right of -nth digit shifted one digit forward
#   -nth digit at end

def rotate_array(array)
  array[1..-1] + [array[0]]
end


def rotate_rightmost_digits(number, n)
  array = number.digits.reverse
  index_before_n = (-n-1).to_i
  index_n = (-n).to_i
  index_after_n = (-n+1).to_i
  result = array[0..index_before_n] + array[index_after_n..-1] + [array[index_n]]
  result.join.to_i
end

puts rotate_rightmost_digits(735291, 6)
  