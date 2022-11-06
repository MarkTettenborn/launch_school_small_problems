puts 'enter an integer greater than one'
integer = gets.chomp.to_i

puts 'enter 1 to sum or 2 to find product'
operation = gets.chomp

if operation == '1'
  puts result = (1..integer).inject(:+)
elsif operation == '2'
  puts result = (1..integer).inject(:*)
else
  puts 'input error'
end