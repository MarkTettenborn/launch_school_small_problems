# Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product of all 
# numbers between 1 and the entered integer.

# ask user for an integer greater than 0
# ask user what operation to perform
# create an array containing all intsgers between 1 and user's input
# sum or find product of numbers in the array
# print the result

def create_array(integer)
  array = []
  number = 1
  until number > integer
    array << number
    number +=1
  end
  array
end

def array_product(array)
  index = 1
  result = array[0]
  until index == array.size
    result = result*array[index]
    index += 1
  end
  result
end
  
puts 'enter an integer greater than one'
integer = gets.chomp.to_i

puts 'enter 1 to sum or 2 to find product'
operation = gets.chomp

array = create_array(integer)

if operation == '1'
  puts result = array.sum
elsif operation == '2'
  puts result = array_product(array)
else
  puts 'input error'
end
  
                      