# Modify the method from the previous exercise so it ignores non-alphabetic 
# characters when determining whether it should uppercase or lowercase each 
# letter. The non-alphabetic characters should still be included in the return 
# value; they just don't count when toggling the desired case.

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    if char =~ /[a-z]/i 
      need_upper = !need_upper
    end
  end
  result
end

