# Write a method that takes a 3 x 3 matrix in Array of Arrays format and 
# returns the transpose of the original matrix. Note that there is a 
# Array#transpose method that does this -- you may not use it for this 
# exercise. You also are not allowed to use the Matrix class from the standard
# library. Your task is to do this yourself.

# Take care not to modify the original matrix: you must produce a new 
# matrix and leave the original matrix unchanged.

def transpose(matrix)
  new_row1 = []
  new_row2 = []
  new_row3 = []
  
  counter = 0
  matrix.each do |sub_array|
    new_row1[counter] = sub_array[0]
    new_row2[counter] = sub_array[1]
    new_row3[counter] = sub_array[2]
    counter += 1
  end
new_matrix = [new_row1, new_row2, new_row3]
end


matrix = [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

puts transpose(matrix).inspect


# new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]

    