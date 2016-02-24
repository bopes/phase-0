#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: My name as an instance variable in NameData class
# Output: My name in a string from a method in the Greetings class
# Steps:
#  1. The NameData class
#   a. Initialize my name as the instance variable in the NameData class
#   b. Make the name instance variable accessible (read only) outside the class
#  2. The Greetings class
#   a. Initialize a new instance variable as a new object in the NameData class
#   b. Define an instance method that calls the :name value from the instance variable


class NameData

  attr_reader :name

  def initialize
    @name = "Charlie"
  end

end


class Greetings

  def initialize
    @person = NameData.new
  end

  def greet
    puts "Hello, #{@person.name}!"
  end

end


hello = Greetings.new
hello.greet

# Reflection

# Release #1
#
# What are these methods doing?
#
# Some methods are returning the value of the object's instance variables. The other methods are retrieving a new argument that overwrites the isntance variables in the object.
#
# How are they modifying or returning the value of instance variables?
#
# They are returning the values in their final lines, or are overwriting the instance variables with their own arguments.


# Release #2
#
# What changed between the last release and this release?
#
# They added a line:
#  attr_reader :age
# And removed the method what_is_age entirely.
#
# What was replaced?
#
# The what_is_age method was replaced by "attr_reader :age"
#
# Is this code simpler than the last?
#
# Yes, much simpler. There are fewer methods being defined but the instance variable is still available outside the object.


# Release #3
#
# What changed between the last release and this release?
#
# The change_my_age method was removed as well. attr_writer :age was added.
#
# What was replaced?
#
# the change_my_age method was replaced by "attr_writer :age".
#
# Is this code simpler than the last?
#
# Yes, it is simpler again. It makes :age accessible outside the class, and even editable from otuside the class without using instance methods.



# Final Reflection
#
# What is a reader method?
#
# A reader method is a method that makes an instance variable viewable outside of the object.
#
# What is a writer method?
#
# A writer method is a method that lets you set an instance variable to a new value from outside the object.
#
# What do the attr methods do for you?
#
# The attr methods provide reader (attr_reader), writer (attr_writer) (or both (attr_accessor) methods for any new class.
#
# Should you always use an accessor to cover your bases? Why or why not?
#
# No, you should not always use an accessor. Accessor makes it easy to access and set vales for instance variables, but doing so makes the variables vulnerable accidental deletion or changes that shoudld not happen. This makes security and bug fixes very difficult.
#
# What is confusing to you about these methods?
#
# I'm curious to see them actually implemented in a meaningful way. I feel I understand the syntx pretty well, I just want to see them in action to understand the benefits, especially when creating new instances of a class within another class.