# Build a program that asks a user for the length and width of a room in 
# meters and then displays the area of the room in both square meters 
# and square feet.

# Note: 1 square meter == 10.7639 square feet

puts "how wide is the room (in meters)?"
width = gets.chomp

puts "how long is the room (in meters)?"
length = gets.chomp

area_meters = width.to_i*length.to_i

area_feet = area_meters * 10.7639

puts area_meters
puts area_feet
