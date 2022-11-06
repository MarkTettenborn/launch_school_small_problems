# A featured number (something unique to this exercise) is an odd number that 
# is a multiple of 7, and whose digits occur exactly once each. So, for 
# example, 49 is a featured number, but 98 is not (it is not odd), 97 is not 
# (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

# Write a method that takes a single integer as an argument, and returns 
# the next featured number that is greater than the argument. Return an error 
# message if there is no next featured number.

# write method to check whether an integer is a featured number
# -
# iterate through integers starting from argument + 1
# check whether each number is featured
# then break and return the featured number

require 'pry'

def is_featured?(integer)
  integer % 7 == 0 && integer.odd? && integer.digits == integer.digits.uniq
end


def featured(integer)
  current_number = integer + 1
  loop do 
    if is_featured?(current_number)
      return current_number
      binding.pry
      break
    else
      current_number += 1
    end
  end
end

puts featured(1029)
