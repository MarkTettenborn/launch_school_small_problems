# If you take a number like 735291, and rotate it to the left, you get 352917. 
# If you now keep the first digit fixed in place, and rotate the remaining 
# digits, you get 329175. Keep the first 2 digits fixed in place and rotate 
# again to 321759. Keep the first 3 digits fixed in place and rotate again to 
# get 321597. Finally, keep the first 4 digits fixed in place and rotate the 
# final 2 digits to get 321579. The resulting number is called the maximum 
# rotation of the original number.

# Write a method that takes an integer as argument, and returns the maximum 
# rotation of that argument. You can (and probably should) use the 
# rotate_rightmost_digits method from the previous exercise.

#  Note that you do not have to handle multiple 0s.

# where n is number of digits
#   rotate rightmost n digits
#   rotate rightmost n-1 digits
#   .....
# 

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  number = all_digits.join.to_i
end


def max_rotation(number)
  digits_to_rotate = number.digits.length
  puts digits_to_rotate
  until digits_to_rotate == 1
    number = rotate_rightmost_digits(number, digits_to_rotate)
    digits_to_rotate -= 1
    end
  number
end

puts max_rotation(105)
  
  