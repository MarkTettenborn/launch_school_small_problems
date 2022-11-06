# Modify your transpose method from the previous exercise so it works 
# with any matrix with at least 1 row and 1 column.

def transpose(matrix)
  m = matrix.size
  n = matrix[0].size
  
  result = []
  (0...m).each do |column_index|
    new_row = (0...n).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

puts new_matrix.inspect

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]