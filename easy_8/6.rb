# Write a method that takes two arguments: the first is the starting 
# number, and the second is the ending number. Print out all numbers 
# from the starting number to the ending number, except if a number is 
# divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", 
# and finally if a number is divisible by 3 and 5, print "FizzBuzz".

def fizzbuzz(starting_number, ending_number)
  starting_number.upto(ending_number) do |number|
    if (number % 3 == 0) && (number % 5 == 0)
      puts 'FizzBuzz'
    elsif (number % 3 == 0) && (number % 5 != 0)
      puts 'Fizz'
    elsif (number % 3 != 0) && (number % 5 == 0)
      puts 'Buzz'
    else
      puts number
    end
  end
end

fizzbuzz(2, 99)