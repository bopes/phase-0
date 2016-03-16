# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode

# 1. Accept an array as input
# 2. Create a blank output array
# 2. Iterate through the input array
#   a. If the element is divisible by 15, push "FizzBuzz" to the output array
#   b. If the element is divisible by 3, push "Fizz" to the output array
#   c. If the element is divisible by 5, push "Buzz" to the output array
#   d. Else push the element to the output array
# 3. Return the output array


# Initial Solution

# def super_fizzbuzz(array)
#   output_array = []
#   array.each {|num|
#     if num%15 == 0
#       output_array << "FizzBuzz"
#     elsif num%3 == 0
#       output_array << "Fizz"
#     elsif num%5 == 0
#       output_array << "Buzz"
#     else
#       output_array << num
#     end
#   }
#   p output_array
# end

# # Refactored Solution

def super_fizzbuzz(array)
  array.map!{ |num|
    num % 15 == 0 ? num = "FizzBuzz" :
    num %  3 == 0 ? num = "Fizz" :
    num %  5 == 0 ? num = "Buzz" :
    num
  }
end



# Reflection
#
# What concepts did you review in this challenge?
#
# I reviewed decision flows and enumerable methods
#
# What is still confusing to you about Ruby?
#
# There are just more methods to learn and get comfortable with.
#
# What are you going to study to get more prepared for Phase 1?
#
# I've done 4 review challenges and 4 new concept challenges. I still have 3 review challenges left and 2 new concepts challenges. I'm going to try to finish them all and find good refactor steps for each.
