require 'date'

def friday_13th(year)
  unlucky_days = 0
  thirteenth = Date.civil(year, 1, 13)
  12.times do
    unlucky_days += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  unlucky_days
end

puts friday_13th(2015)