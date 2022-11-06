def shout_out_to(name)
  name_caps = name.chars.map { |c| c.upcase! }

  puts 'HEY ' + name_caps.join
end

shout_out_to('you') # expected: 'HEY YOU'