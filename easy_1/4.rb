# Initialise an empty hash
# iterate through the array:
# if string is a key in the hash, then increment associated value by 1
# else add string to the hash as a new key with value 1


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(array)
  
occurences = {}
counter = 0

loop do
  break if counter == array.size
  
  if occurences.has_key?(array[counter])
    occurences[array[counter]] += 1
  else
    occurences[array[counter]] = 1
  end
  counter += 1
  end

puts occurences

end

count_occurrences(vehicles)