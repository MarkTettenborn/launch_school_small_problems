# Write two methods that each take a time of day in 24 hour format, and 
# return the number of minutes before and after midnight, respectively. 
# Both methods should return a value in the range 0..1439.

def after_midnight(time)
  hours = time.split(':')[0].to_i
  minutes = time.split(':')[1].to_i
  result = (hours * 60) + minutes
end
  
puts after_midnight('12:45')
puts after_midnight('23:59')

def before_midnight(time)
  hours = time.split(':')[0].to_i
  minutes = time.split(':')[1].to_i
  result = -(1440 - ((hours * 60) + minutes))
end

puts before_midnight('12:45')
puts before_midnight('23:59')