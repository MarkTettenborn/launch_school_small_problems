# Write a method that takes a floating point number that represents 
# an angle between 0 and 360 degrees and returns a String that represents 
# that angle in degrees, minutes and seconds. You should use a degree 
# symbol (°) to represent degrees, a single quote (') to represent minutes, 
# and a double quote (") to represent seconds. A degree has 60 minutes, 
# while a minute has 60 seconds.

DEGREE = "\xC2\xB0"

def dms(angle)
  degrees = angle.to_i 
  minutes = ((angle - degrees) * 60).to_i
  seconds = (((angle - degrees) * 60) - ((angle - degrees) * 60).to_i).round
  result = %(#{degrees.to_s}#{DEGREE}#{minutes.to_s}'#{seconds.to_s}")
end

puts dms(275.345)