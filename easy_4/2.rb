# Write a method that takes a year as input and returns the century. The 
# return value should be a string that begins with the century number, and 
# ends with st, nd, rd, or th as appropriate for that number.

# New centuries begin in years that end with 01. So, the years 1901-2000 
# comprise the 20th century.

# calculate century number:
#   if last two digits = 01-99, then first two digits less one
#   else first two digits


def century(year)
  year_array = year.to_s.split('')
  first_digits = year_array[0..1].join.to_i
  last_digits = year_array[2,3].join.to_i
  if last_digits.between?(01, 99)
    century_number = (year_array[0..1].join.to_i + 1).to_s
  else
    century_number = year_array[0..1].join
  end

  suffix = case century_number[1]
            when '1'
              'st'
            when '2'
              'nd'
            when '3'
              'rd'
            else
              'th'
            end

puts century_number + suffix

end

century(1999)