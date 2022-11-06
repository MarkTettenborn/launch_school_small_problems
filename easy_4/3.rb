# In the modern era under the Gregorian Calendar, leap years occur in every 
# year that is evenly divisible by 4, unless the year is also divisible by 
# 100. If the year is evenly divisible by 100, then it is not a leap year 
# unless the year is evenly divisible by 400.

# Assume this rule is good for any year greater than year 0. Write a method 
# that takes any year greater than 0 as input, and returns true if the year 
# is a leap year, or false if it is not a leap year.

# a) check whether year is divisible by 4
# b) check whether year is divisible by 100
# if a is true and b is false return true

def leap_year?(year)
  ( year % 4 == 0 ) && ( year % 100 != 0)
end

puts leap_year?(2016)
puts leap_year?(2004)
puts leap_year?(1993)

