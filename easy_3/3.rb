# Write a program that will ask a user for an input of a word or multiple 
# words and give back the number of characters. Spaces should not be 
# counted as a character.

puts 'input please'
input = gets.chomp

characters = input.split('').reject { |char| char == ' '}

puts characters.inspect
puts num_char = characters.size