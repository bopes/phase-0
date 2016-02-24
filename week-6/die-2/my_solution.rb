# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# A class receives an array of strings when initializing (one string per side)
# Output:
# A new class that contains two methods
# 1. #sides one returns the number of sides
# 2. #roll randomly returns one of the initial strings
# Steps:
# 1. Create an argument error if the initial string array doesn't include at least one string
# 2. Define a method that returns a count of the number of strings in the intial array
# 3. Define a method that randomly generates a number up to the number of strings in the initial array, and returns the associated string from the array



# Initial Solution

class Die
  def initialize(labels)
    raise ArgumentError.new("Die must contain at least one side") unless labels.length >= 1
      @side_labels=labels
  end

  def sides
    @side_labels.length
  end

  def roll
    @side_labels[rand(@side_labels.length)]
  end
end



# Refactored Solution

class Die
  def initialize(labels)
    raise ArgumentError.new("Die must contain at least one side") unless labels.length >= 1
    @labels=labels
  end

  def sides
    @labels.length
  end

  def roll
    @labels[rand(@labels.length)]
  end
end




# Production Run

new_die = Die.new(['a','b','c','d'])

p new_die.sides

p new_die.roll

# Reflection

=begin
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

There were a few differences. First, I had to use #length on the input array to determine the number of sides instead of just returning the inputted number of sides. Then, I had to call the array with a random number to get a roll. I couldn't just return a number.

What does this exercise teach you about making code that is easily changeable or modifiable?

It's important to make your code expandable from the beginning, so that you're able to elaborate on individual variables (for instance) when your application becomes bigger.

What new methods did you learn when working on this challenge, if any?

I didn't use any new methods, but I confirmed that you can pass along a method as an argument in another method (see line 54: @labels[rand(@labels.length)]
)

What concepts about classes were you able to solidify in this challenge?

I solidified how to assign and access instance variables. I remembered it was unique, but this helped me remember how to do it - namely, that you need to set the instance variable equal to the argument before you can use it.

=end
