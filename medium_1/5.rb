# Write a method that displays a 4-pointed diamond in an n x n grid, where n 
# is an odd integer that is supplied as an argument to the method. You may 
# assume that the argument will always be an odd integer.

# row 1 = spaces*((n-1)/2), diamonds*1, spaces*((n-1)/2)
# row 2 = spaces*((n-3)/2), diamonds*3, spaces*((n-3)/2)
# row 3 = spaces*((n-5)/2), diamonds*5, spaces*((n-5)/2)
# ....
# row (n-1)/2 = diamonds*n

def top_rows(n)  
  row_number = 1
  until row_number == (n-1)/2 + 1
    number_stars = row_number*2 - 1 
    spaces = '-' * ((n - number_stars)/2)
    stars = '*' * number_stars
    puts row = spaces + stars + spaces
    row_number += 1
  end
end

def bottom_rows(n)
  row_number = 1
  until row_number == (n-1)/2 + 1
    number_stars = n - row_number * 2
    spaces = '-' * ((n - number_stars)/2)
    stars = '*' * number_stars
    puts row = spaces + stars + spaces
    row_number += 1
  end
end
  
def diamond(n)
  top_rows(n)
  puts '*' * n
  bottom_rows(n)
end

diamond(55)

  
