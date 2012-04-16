#!/usr/bin/env ruby

# Types in Ruby

# Strings

puts 'Hello, Darling.'
puts 'What\'s up?'
puts "A\tTab."
puts

# \ is an escape sequence
# with single quotes \' for '
# single '' are limited
# double "" have more escape sequences

puts "What's up?"
puts

# "" recognizes the apostrophe

# From http://en.wikibooks.org/wiki/Ruby_Programming/Strings
# \" – double quote
# \\ – single backslash
# \a – bell/alert
# \b – backspace
# \r – carriage return
# \n – newline
# \s – space
# \t – tab

# you can insert the value of pieces or Ruby code directly into strings

puts "Inches/yard: #{12*3}"
puts "#{"Tora! "*3}"
puts

# Yet another way to create strings

puts %q{Hoagies & grinders!}
puts %Q;#{"Navy beans! "*3};
puts

# and the heredocs method

puts my_string = <<MY_STRING
  This is a simple string that is
  pre-formatted, which means that the
  way it is formatted here including
  tabs and newlines will be duplicated
  when I print it out.
MY_STRING
puts

# can also use to_s

# Fixnum (smaller numbers) and Bignum for numbers

# Fixnum
puts -123456789
puts 0d123456789

# Bignum
puts 1234323424231


