# Build a program that displays when the user will retire and 
# how many years she has to work till retirement.

# ask user for age
# ask user for retirement age
# caculate time to retirement 
# calculate retirement date
# print results

puts "how old are you?"
current_age = gets.chomp.to_i

puts "at what age do you plan to retire?"
retirement_age = gets.chomp.to_i

time_to_retirement = retirement_age - current_age
current_year = Time.now.year
retirement_date = current_year + time_to_retirement

puts "It's #{current_year}. You will retire in #{retirement_date}. #{time_to_retirement} years to go."