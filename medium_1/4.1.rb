# You have a bank of switches before you, numbered from 1 to n. Each switch 
# is connected to exactly one light that is initially off. You walk down 
# the row of switches and toggle every one of them. You go back to the 
# beginning, and on this second pass, you toggle switches 2, 4, 6, and so 
# on. On the third pass, you go back again to the beginning and toggle 
# switches 3, 6, 9, and so on. You repeat this process and keep going 
# until you have been through n repetitions.

# Write a method that takes one argument, the total number of switches, 
# and returns an Array that identifies which lights are on after n repetitions.

# initialise an array reflecting status of each light - 1 = on and 0 = off
# iteration1 - toggle all switches 
# iteration2 - toggle odd switches (not even, due to zero indexing)
# iteration3 - toggle even switches 
# and so on
# terminate when iterations = n

# n.b. this doesn't implement the problem as stated...

def first_toggle(array)
    array.map! {|element| element == 0 ? 1 : 0 }
end

def toggle_every_nth(array, n)
    new_array = []
    array.each_with_index do |element, index|
        if (index + 1) % n == 0
            if element == 0
                element = 1
            else
                element = 0
            end
        end
    new_array << element
    end
    array = new_array
end

def lights(n)
    array = Array.new(n, 0)
    array = first_toggle(array)
    iterations = 1
    until iterations == n
        array = toggle_every_nth(array, iterations + 1)
        iterations += 1
    end
    array
end

def results(n)
    array = lights(n)
    results = []
    array.each_with_index do |light, index|
        if light == 1
            results << index + 1
        end
    end
    results
end

puts results(1000).inspect

