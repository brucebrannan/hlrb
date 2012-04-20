#!/usr/bin/env ruby

# method for example separator
def lp()
  puts "-------------------------------------------------------------"
  end
lp()

# method with parameter
def my_new_method(name)
  puts "hey, " + name + ", this is my new method..."
end
my_new_method('magnus')
lp()

def my_method(first, second)
  puts first
  third = second
  puts second
end
my_method("yes.", "no.")
lp()
# neither parameters nor local variables are accessible outside the method
# puts first
# puts third

# you can set default values and override
def new_method(a = "This", b = "is", c = "fun")
  puts a + ' ' + b + ' ' + c + '.'
end
new_method('Rails')
new_method('Swimming','feels','cool')
lp()

#
def print_relation(relation, *names)
  puts "My #{relation} include: #{names.join(', ')}."
end
print_relation("cousins", "Morgan", "Miles", "Lindsey")
print_relation("fruits", "Apples", "Oranges", "Bananas", "Watermelons")
lp()

# valid calls of puts
puts "Look ma!  No parentheses!"
puts("Look ma!  Parentheses!")
puts
puts()
lp()

# If no return statement is placed inside the method,
# the last value used in the method is returned
def return_me(value)
  scoped_value = value
end
def echo_me(value)
  value
end
def multi_return
  return 'more', 'than', 'one'
end
my_value = return_me('this is fun!')
puts my_value

# assign variables in parallel
one, two, three = multi_return
puts one + three
lp()

# this method iterates an array using the each method
# and passes in each element to the code block {}
# this method takes a block as a parameter
myarray = %w{one two three four}
myarray.each {|element| print "[" + element + "]... " }
puts
lp()

# can also write with do and end vs. {}
myarray.each do |element|
  print "[" + element + "]... "
end
puts
lp()

# Proc objects are like blocks pushed into variables
# performance is the difference

# Proc objects are simply instances of the Proc class
# that hold a block of code that is executable
myproc = Proc.new {|animal| puts "I love #{animal}!"}
myproc.call("pandas")
lp()

def make_show_name(show)
  Proc.new {|host| show + " with " + host}
end
show1 = make_show_name("Practical Cannibalism")
show2 = make_show_name("Cotillions in the Amazon")
show1.call("H. Annabellector")
show2.call("Jack Hannah")
show1.call("Kirstie Alley")