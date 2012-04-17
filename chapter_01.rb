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
puts 0d123459

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

# to write an array of strings separated by spaces instead of commas and without quotes around them
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
puts

# add an element at index 10
my_dazzling_array[10] = 11
puts my_dazzling_array
puts

# add an element at index 12, index 11 is nil
my_dazzling_array[12] = 12
puts my_dazzling_array
puts

# insert an element at index 11
my_dazzling_array[11] = 'hello'
puts my_dazzling_array
puts

# other methods to insert elements into an array
my_dazzling_array.push(15, 16)
puts my_dazzling_array
puts

# insert allows a specified index
# the -1 goes to the end of the array and moves back 1
my_dazzling_array.insert(-1, 17)
puts my_dazzling_array
puts

# the << operator allows push of several elements to an array
my_dazzling_array << 14 << 'hello' << 18
puts my_dazzling_array
puts

# how to use the array, call each index
puts my_dazzling_array[0]
puts

index = 6 # must be an integer or will return a TypeError
puts my_dazzling_array[index]
puts

# reference a range of elements
puts my_dazzling_array[0..8]
puts

puts my_dazzling_array.at(0)
puts

# fetch allows specification of an output if an element isn't found at an index
puts my_dazzling_array.fetch(999, "Not found!!")
puts

# values_at retrieves an array of indexes
puts my_dazzling_array.values_at(7, 8, 2)
puts

# pop grabs the last element in the array and removes it from the array
# shift grabs the first element from the array and removes it shifting all other elements back one index

puts "Before Pop"
puts my_dazzling_array
my_dazzling_array.pop
puts "After Pop"
puts my_dazzling_array
puts
my_dazzling_array.shift
puts "After Shift"
puts my_dazzling_array
puts

# delete_at method deletes elements at an index (x)
puts my_dazzling_array.delete_at(1)
puts my_dazzling_array
puts

# specify an element instead of an index with .delete(x)
puts my_dazzling_array.delete('hello')
puts my_dazzling_array

# {} overrides the default error message when specifying an element that isn't found'
puts my_dazzling_array.delete(1337) { "Wrong!" }
puts

# The Hash - aka Associative Array or Dictionary
# hashes are collections of values of any type indexed by other values of (almost)
# any type rather than solely numbers like arrays (though you can use numbers for hashes also)

# bracket nothing or a set of key value pairs with => between the braces, with a comma between entries
my_wombats = { 'Wally Wombat' => 'The Jungle St.',
               'Wilma Wombat' => 'The House on the Corner',
               'Sam' => 'Notawombat Way', 'Mump' => 13 }

# you can use the new method for creating hashes
# it takes a single parameter which becomes a default value if
# a nonexistent key is referenced (or if the default method is called)
new_hash = Hash.new("Not here!")
new_hash['non-existent key']

# Keys can be added to a hash by simply defining them
my_wombats['Wombie McWombat'] = '123 That Street'
# Note you don't redefine the hash or enclose anything in brackets or braces

# to use the hash simply reference it with hash_name[key]
puts my_wombats['Wally Wombat']

# Hashes also offer the values_at method, which allows you to provide numerous
# keys and receive their values in an array. Values in hashes have to be called
# using these methods (fetch, [key], or values_at)

# to test hash elements

# has_key? tests whether the hash key passed as a parameter exists
# puts my_wombats.has_key?('Wilma Wombat') # true
#
# checks to see if the value exists within the hash
#puts my_wombats.has_value?('Lamps and pandas') # false
#
# the empty method checks if any elements exist in the hash
#puts my_wombats.empty? # false
#
# to delete has members use hash_name.delete[key]
# puts my_wombats.delete['Wilma Wombat']
# puts my_wombats.has_key? ('Wilma Wombat') # false
#
# methods to clear all elements in a hash
# my_wombats.clear
# puts my_wombats.empty? #true

# Variables and the Like (bottom of pg. 20)
# In Ruby, variables point to a location in memory
first_var = "i hold a reference"
second_var = first_var
second_var.chop! # Chops off the last character of the string
puts second_var
puts first_var

# variables are not objects but references (or pointers) to objects
# VARIABLES ARE NOT OBJECTS BUT REFERENCES (OR POINTERS) TO OBJECTS!
# References merely point to objects; they do not hold the actual objects themselves
# use .clone or .dup method on an object to copy it

# normal variable assignment: lvalue = rvalue
left = 5
puts left

# chain assignments
left = middle = 7
puts left
puts middle
puts

# not parallel assignment, from right to left
t = h = i = s = i = s = c = r = a = z = y = 100
puts t, h, i, s, i, s, c, r, a, z, y
puts

# parallel assignment
p1,p2=1,2 # [1, 2] creates an array of assigned values
puts p1
puts p2

rvalue=0
a,b=rvalue
puts "a = #{a}"
puts "b = #{b}"
puts

# an array can be assigned to a list of variables
rvalue=[1,2,3,4,5]
a,b=rvalue
puts "rvalue = #{rvalue}"
puts "a = #{a}"
puts "b = #{b}"
puts

# Arrays can also be assigned in parallel in nested assignments
a, (b, c), d = 10, 11, 12, 13
puts "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
# c does not get assigned because it is in an array with b and the corresponding rvalue is not an array
puts

a, (b, c), d = 10, [11, 12], 13
puts "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
puts

# additive assignment operator (+=) and the subtractive assignment operator (-=)
# they replace ++ and -- in other languages

lumps += 2 # equivalent to lumps = lumps +2
puts lumps
