# Write a program that solicits 6 numbers from the user, then prints a 
# message that describes whether or not the 6th number appears amongst 
# the first 5 numbers.

counter = 1
array = []

loop do
  break if counter > 6
  puts "Enter number #{counter}"
  array << gets.chomp
  counter += 1
end

if (array[0]..array[4]).include? array[5]
  puts '6th number is included in first 5'
else
  puts "no it's not"
end
