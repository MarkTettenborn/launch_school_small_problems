# Create a simple tip calculator. The program should prompt for a bill amount 
# and a tip rate. The program must compute the tip and then display both 
# the tip and the total amount of the bill.

puts "what is the bill amount?"
bill_amount = gets.chomp

puts "what is the tip rate (as %)?"
tip_rate = gets.chomp

tip = (bill_amount.to_f * (tip_rate.to_f/100)).round(2)
total_bill = bill_amount.to_f.round(2) + tip

puts tip
puts total_bill