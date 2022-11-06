# Write a method that takes two arguments, a positive integer and a boolean, 
# and calculates the bonus for a given salary. If the boolean is true, the 
# bonus should be half of the salary. If the boolean is false, the bonus 
# should be 0.

def calculate_bonus(salary, boolean)
  if boolean 
    bonus = salary * 0.5
  else
    bonus = 0
  end
end

puts calculate_bonus(10000, true)
puts calculate_bonus(10000, false)