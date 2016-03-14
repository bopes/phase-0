# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode

# 1. Create a starter array with 0 and 1
# 2. Create a method that accepts an integer as an argument
#   a. Create a sum variable
#   b. Create a while loop that runs while sum is less than the argument
#   c. With each loop, increase the sum by adding the last two array numbers together
#   d. With each loop, add the sum into the starter array
#   e. Check if the sum is equal to or greater than the argument. If yes, return true.

# Initial Solution

def is_fibonacci?(num)
  fibonacci = [0,1]
  next_num = 0
  while next_num < num
    next_num = fibonacci[-1]+fibonacci[-2]
    fibonacci << next_num
  end
  num == next_num
end


# Refactored Solution







# Reflection
