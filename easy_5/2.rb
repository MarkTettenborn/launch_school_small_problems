# The time of day can be represented as the number of minutes before or after 
# midnight. If the number of minutes is positive, the time is after midnight. 
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format and returns 
# the time of day in 24 hour format (hh:mm). Your method should work with 
# any integer input.

# You may not use ruby's Date and Time classes.

# input: positive or negative integer
# output : time of day in 24hr format

# hours: divide by 60 to get number of hours before/after midnight (ignoring miunutes)
#        if input is negative add 1 hour
#        if input is negative subtract from 24, else take as is
#
# minutes: remainder of dividing input by sixty. 
#          if input negative, subtract from 60, else take as is
#
# concatentate hours, ':' and minutes

# n.b. solution only works for inputs less than a full day

def time_of_day(input)
  hours = input / 60
  
  minutes = input % 60
  puts minutes
  
  if input < 0 && minutes != 0
    hours = 24 + hours 
  end
  
  time = "#{hours}:#{minutes}"
end

puts time_of_day(-223)