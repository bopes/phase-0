# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: an integer
# Output: a symbol indicating if the integer was higher or lower than an instance variable
# Steps:
# 1. Create a class that accepts an integer (answer) as an argument during initialization - DONE
# 2. Define an instance method: - DONE
#   a. This should accept an integer as an argument (guess) - DONE
#   b. This method should return the symbol :correct if guess = answer - DONE
#   c. This method should return the symbol :high if guess > answer - DONE
#   d. This method should return the symbol :low if guess < answer - DONE
# 3. Define an instance method: - DONE
#   a. If the last guess was correct, return true - DONE
#   b. If the last guess was incorrect, return false - DONE


# Initial Solution

# class GuessingGame

#   def initialize(answer)
#     @answer=answer
#     @solved=false
#   end

#   def guess(guess)
#     if guess == @answer
#       @solved=true
#       :correct
#     elsif guess > @answer
#       @solved=false
#       :high
#     else
#       @solved=false
#       :low
#     end
#   end

#   def solved?
#     if @solved == true
#       true
#     else
#       false
#     end
#   end

# end




# Refactored Solution (no changes)

# class GuessingGame

#   def initialize(answer)
#     @answer=answer
#     @solved=false
#   end

#   def guess(guess)
#     if guess == @answer
#       @solved=true
#       :correct
#     elsif guess > @answer
#       @solved=false
#       :high
#     else
#       @solved=false
#       :low
#     end
#   end

#   def solved?
#     if @solved == true
#       true
#     else
#       false
#     end
#   end

# end

class GuessingGame

  def initialize(answer)
    @answer = answer
  end

  def guess(last_guess)
    @last_guess = last_guess
    if last_guess > @answer
      :high
    elsif last_guess < @answer
      :low
    else
      :correct
    end
  end

  def solved?
    @answer == @last_guess
  end

end




# Reflection

# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# Instance variables and methods have all of the same characteristics and behaviors of real-world objects, but they only exist within a defined class.
#
# When should you use instance variables? What do they do for you?
# You should use instance variables when you are defining variables to be used multiple times within a class.
#
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# You use flow control whenever the computer needs to "decide" between multiple possibilities. I did not have any problems using flow control in this challenge.
#
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# I believe symbols are similar to strings that use less memory. They are not editable, so they also have fewer method options than strings. As a result, you can use them to optimize your code when you have multiple similar references or outputs - using the symbol will reduce your application's memory usage and improve performance.