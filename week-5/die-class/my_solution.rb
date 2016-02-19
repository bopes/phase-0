# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: an integer to create a die of a certain side
# Output: two methods in a class (# of sides, roll outcome)
# # Steps:
#   -create a new class called Die
#   -require a new die to receive a number greater than 1 to indicate the number of sides
#     -if the number given is less than 1, return an argument error
#   -give the Die class a # of sides method
#     -this will return the number of sides inputted when creating the die
#   -give the Die class a roll method
#     -this will return a random number less than or equal to the die's number of sides



# 1. Initial Solution

class Die
  def initialize(sides)
    unless sides > 1
      raise ArgumentError.new("Number of sides must be 1 or greater")
    end
    @die_sides=sides
  end

  def sides
    p @die_sides
  end

  def roll
    p rand(@die_sides)+1
  end
end



# 3. Refactored Solution

class Die
  def initialize(sides)
    unless sides >1
      raise ArgumentError.new("Number of sides must be 1 or greater")
    end
    @die_sides=sides
  end

  def sides
    p @die_sides
  end

  def roll
    p rand(@die_sides)+1
  end
end





# 4. Reflection
#
# What is an ArgumentError and why would you use one?
#
# An ArgumentError is an error message you can trigger if certain input criteria is not met.
#
# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
#
# I used the rand() method, which returns a random integer somewhere between 0 and 1 below the given maximum. I needed to add a '+1' afterwards, because the roll should have returned a value between 1 and the max (inclusive).
#
# What is a Ruby class?
#
# A Ruby class is an object that can hold defined data and has certain methods assigned to it.
#
# Why would you use a Ruby class?
#
# You would use a class to create multiple different instances of a type of data container.
#
# What is the difference between a local variable and an instance variable?
#
# A local variable is a placeholder within a method that holds no value outside of the method. An instance variable is saved data within a class that can be returned at any time.
#
# Where can an instance variable be used?
#
# An instance variable can be used in a class to store data relevant to that particular class.