# Write a method that takes a positive integer as an argument and returns 
# that number with its digits reversed. 

def reversed_number(integer)
  digit_array = integer.digits
  limit = digit_array.size
  left_side = 0
  right_side = -1
  
  until left_side == limit
    digit_array[left_side], digit_array[right_side] = digit_array[right_side],
    digit_array[left_side]
    left_side += 1
    right_side -=1
  end
  digit_array.join.to_i
end


puts reversed_number(123345354)

