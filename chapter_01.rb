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

# Integers

# Fixnum (smaller integers) and Bignum for numbers

# Fixnum no prefix or 0d
puts -123456789
puts 0d123456789

# Bignum
puts 1234323424231
puts

# Hex prefix with 0x
puts 0x5c1
puts

# Octal prefix with 0
puts 01411
puts

# Fixnum
puts 1_90_33 # Ruby ignores underscores in numbers
puts

# base2 prefix with 0b
puts 0b1010101
puts

# Float Type

puts 1.5
puts 1.0e5
puts

# this produces an error because there have to be numbers on both sides of the decimal point
# puts 1.e5

# methods on numbers

puts -4.abs
puts 6.zero?
puts

# arithmetic operators are also methods

puts 2+2
puts 6/3
puts -4*2
puts

# Arithmetic Operators Table
#   +   Addition
#   -   Subtraction
#   /   Division
#   *   Multiplication
#   ()  Order of operations (i.e. group expressions to force a certain order of operations)
#   %   Modulus (i.e. the remainder for those not in the know)

# Collections = container of objects, group of related objects
# Separate members are called elements

# The Range Collection = sequential collection of values, separate by ..
# .. is inclusive of all values

human = 48..81
elf = 40..68
ogre = 120..132

# ... excludes the last value but everything inbetween

troll = 70...101

# use == or eql? with ranges

good_cookies = 1...3
bad_cookies = 1..3
burnt_cookies = 1..3

puts(good_cookies == bad_cookies)
puts(good_cookies.eql?(burnt_cookies))
puts(bad_cookies == burnt_cookies)
puts

# === or include? tests whether a value is found within a range
my_guess = 2
his_guess = 19
puts(good_cookies === my_guess)
puts(good_cookies.include?(my_guess))
puts(good_cookies === his_guess)
puts

# include? includes any number value within the range like 2.456 in 1..3 = true
# include? has an alias called member?

puts 11111
puts (good_cookies.member?(my_guess))
puts (good_cookies.member?(1.8888))
puts

# The Array Collection

# indexing is zero based
# the elements of an array do not have to be of the same type
# nor does the type of array have to be specified before it is initialized

its_so_empty = []
oh_so_empty = Array.new
hello = ['ni hao', 'bonjour', 'hi', 'howdy']
random_types = [13, 'napkin', (1336 + 1).to_s]

my_haiku = %w( my dog digs it here\n )
puts my_haiku

my_haiku = %w( he is nice to me & cats\n )
puts my_haiku

my_haiku = %W( but he ate #{(2*3)/6} once ) # %W for string interpolation
puts my_haiku

my_haiku = %w( but he ate #{(2*3)/6} once )
puts my_haiku

# to_a converts an object to an array
my_range = 1..10

puts my_dazzling_array = my_range.to_a
