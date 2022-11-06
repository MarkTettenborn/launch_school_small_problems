# A continuation of the previous exercise.

# The British Empire adopted the Gregorian Calendar in 1752, which was a 
# leap year. Prior to 1752, the Julian Calendar was used. Under the 
# Julian Calendar, leap years occur in any year that is evenly divisible by 4.

# Using this information, update the method from the previous exercise to 
# determine leap years both before and after 1752.

def leap_year_gregorian?(year)
  ( year % 4 == 0 ) && ( year % 100 != 0)
end

def leap_year_julian?(year)
  year % 4 == 0  
end

def leap_year?(year)
  if year < 1752
    leap_year_julian?(year)
  else
    leap_year_gregorian?(year)
  end
end

puts leap_year?(1900)
puts leap_year?(1700)
