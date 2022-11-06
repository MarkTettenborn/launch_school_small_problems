# Write a function named xor that takes two arguments, and returns 
# true if exactly one of its arguments is truthy, false otherwise. Note 
# that we are looking for a boolean result instead of a truthy/falsy 
# value as returned by || and &&.

def xor(a,b)
  if (a && b) || (!a && !b)
    false
  else
    true
  end
end

puts xor(true, true)
puts xor(false, false)
puts xor(true, false)