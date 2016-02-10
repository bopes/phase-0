# Release 2 - Mini-Challenges

puts 'What\'s your first name?'
first_name = gets.chomp

puts 'Middle name?'
middle_name = gets.chomp

puts 'And your last name?'
last_name = gets.chomp

puts 'Hello, ' + first_name + ' ' + middle_name + ' ' + last_name + '.'

puts 'And what\'s your favorite number?'
favorite_number = gets.chomp
better_number = favorite_number.to_i+1

puts 'That\'s OK, but ' + better_number.to_s + ' would be better...'


# Release 6 - Reflection

# How do you define a local variable?

# You define a local variable by setting the variable equal to some value.

# How do you define a method?

# You define a method by using "def method_name(argument1, argument2, etc.).... end". This sets the method and the arguments for executing the method

# What is the difference between a local variable and a method?

# A local variable has a defined value. A method takes an input and applies something to it, either manipulating the input object or creating something new based off the input argument.

# How do you run a ruby program from the command line?

# Use IRB to create a Ruby environment within your terminal.

# How do you run an RSpec file from the command line?

# use this syntx: $ rspec filename.rb, where filename.rb contains the testing code

# What was confusing about this material? What made sense?

# It was a little confusing getting used to IRB, and I had to look up how to create multiple lines of code before executing. it also took me a while before I understood how to try out methods in IRB, since I was using a text editor for these challenges instead.

# 4.3.1 - Address Formatter:

# https://github.com/bopes/phase-0/blob/master/week-4/address/my_solution.rb

# 4.3.2 - Math Methods:

# https://github.com/bopes/phase-0/blob/master/week-4/math/my_solution.rb
