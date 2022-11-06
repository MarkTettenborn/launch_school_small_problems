# Write a program that will ask for user's name. The program will then 
# greet the user. If the user writes "name!" then the computer yells 
# back to the user.

puts 'what is your name?'
name = gets.chomp

if name[-1] == '!'
  puts "HELLO #{name.upcase.chop}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end