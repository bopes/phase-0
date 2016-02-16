# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# an array, a minimum length for the array (integer), an optional value to pad with

# What is the output? (i.e. What should the code return?)
# a single array that has as many elements as the minimum size

# What are the steps needed to solve the problem?
# check if array has fewer elements than required
# if it does, create remaining elements with value given
# if it doesn't, return

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length < min_size
    i = array.length
    while i < min_size
      array[i] = value
      i += 1
    end
  end
  p array
end

# test_array = [1,2,3]

# p test_array

# pad!(test_array,5,"apple")

# p test_array

def pad(input_array, min_size, value = nil) #non-destructive
  array = []
  input_array.each do |x|
    array << x
  end
  if array.length < min_size
    i = array.length
    while i < min_size
      array[i] = value
      i += 1
    end
  end
  p array
end

# test_array = [1,2,3]

# p test_array

# pad(test_array,5,"apple")

# p test_array


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  while array.length < min_size
    array.push(value)
  end
  array
end

def pad(input_array, min_size, value = nil) #non-destructive
  array = Array.new(input_array)
  while array.length < min_size
    array.push(value)
  end
  array
end

# 4. Reflection

# Were you successful in breaking the problem down into small steps?

# I think so, but this challenge has so few steps that I may have glossed over them.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

# Yes, we were able to translate the pseudocode into actual code pretty directly. We had some difficulty executing the plan for the non-destructive method, but that was a question about the code, not the pseudocode steps

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

# Yes, teh initial solution was successful at passing the tests. We just iterated through the arrays pretty simply, and it worked the way we intended it to.

# When you refactored, did you find any existing methods in Ruby to clean up your code?

# Yes, several. We also were able to remove an if statement that became superfluous.

# How readable is your solution? Did you and your pair choose descriptive variable names?

# I think it's pretty readable. We used the variable names provided by DBC, but in retrospect we could have been even more explicit about the array_copy in the non-destructive method.

# What is the difference between destructive and non-destructive methods in your own words?

# A destructive method manipulates the original input variable. A non-destructive method makes a duplicate of the input and manipulates the duplicate. Both return the same data within the array.