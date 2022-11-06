# Write a method that takes an Array of Integers between 0 and 19, and 
# returns an Array of those Integers sorted based on the English words 
# for each number:

# iterate through input array
# replace each element with equivalent string from NUMBER_WORDS (using index)
# sort new array of strings
# replace each element with equivalent integer (again leveraging index)

NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(array)
  string_array = array.map { |element| NUMBER_WORDS[element] }
  new_number_array = string_array.sort.map do 
    |num| NUMBER_WORDS.find_index(num) 
  end
new_number_array
end

puts alphabetic_number_sort([1, 3, 4])
