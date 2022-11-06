# Write a program that prompts the user for two positive integers, and 
# then prints the results of the following operations on those two 
# numbers: addition, subtraction, product, quotient, remainder, and power. 
# Do not worry about validating the input.

puts 'first integer:'
integer_1 = gets.chomp

puts 'second integer:'
integer_2 = gets.chomp

puts integer_1.to_i + integer_2.to_i
puts integer_1.to_i - integer_2.to_i
puts integer_1.to_i * integer_2.to_i
puts integer_1.to_f / integer_2.to_f
puts integer_1.to_i % integer_2.to_i
puts integer_1.to_i ** integer_2.to_i