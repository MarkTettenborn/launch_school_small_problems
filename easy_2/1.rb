# Build a program that randomly generates and prints Teddy's age. To get 
# the age, you should generate a random number between 20 and 200.

# generate a random number between 20 and 200
# print sentence including the random number

def teddys_age
  age = rand(20..200)
  puts "Teddy is #{age} years old!"
  
end

teddys_age
