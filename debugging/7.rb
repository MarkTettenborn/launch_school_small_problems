def neutralize(sentence)
  words = sentence.split(' ')
  nice_words = []
  words.each do |word|
    if !negative?(word)
    nice_words << word 
    end 
  end

  nice_words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.