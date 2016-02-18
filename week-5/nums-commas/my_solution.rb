# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# an integer
# What is the output? (i.e. What should the code return?)
# a string that separates the integer with commas every 3 digits, starting from the back
# What are the steps needed to solve the problem?
# pass the last 3 digits of the integer into a string and pass them to another string
# if the new string already has some digits, put a period after the 3 new digits
# remove those three digits from the integer
# repeat until integer doesn't exist
# return the final string


# 1. Initial Solution

# def separate_comma(integer)
#   commaed = ""
#   while integer > 0
#     new = integer%1000
#     if commaed == ""
#       commaed.insert(0,new.to_s)
#     else
#       commaed.insert(0,"#{new},")
#     end
#     integer /= 1000
#   end
#   p commaed
# end

# 2. Refactored Solution


# Refactor 1
def separate_comma(integer)
  comma = ""
  while integer > 0
    new = integer%1000
    if new.to_s.length == 1
      new = "00"+new.to_s
    elsif new.to_s.length == 2
      new = "0"+new.to_s
    end
    comma.insert(0,"#{new},")
    integer /= 1000
  end
  comma = comma.chop
  while comma.start_with?("0")
    comma[0]=''
  end
  p comma
end

# Refactor 2
def separate_comma(integer)
  comma=""
  while integer > 0
    if integer.to_s.length > 3
      new = integer.to_s[-3..-1]
    else
      new = integer.to_s
    end
    integer /= 1000
    comma.insert(0,"#{new},")
  end
  comma=comma.chop
  p comma
end

# Refactor 3
def separate_comma(integer)
  comma=""
  integer = integer.to_s
  while integer != ''
    if integer.length > 3
      new = integer[-3..-1]
      integer = integer[0..-4]
    else
      new = integer.to_s
      integer = ''
    end
    comma.insert(0,"#{new},")
  end
  comma=comma.chop
  p comma
end

# 3. Reflection

# What was your process for breaking the problem down? What different approaches did you consider?

# i tried to use mod 1000 to acquire the final 3-digit remainder to put in the string, and then used integer division to delete those digits from the integer.  Then I could repeat this process until the integer was whittled down to nothing.

# Was your pseudocode effective in helping you build a successful initial solution?

# Almost. My initial solution passed the first test, but then when I ran the test over again I realized that the modulo approach didn't return a 3-digit number for a 2 digit remainder (1,024 % 1000 = 24, for instance). So I had to insert an IF statement to handle too-short strings.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

# I actually made 3 different refactored solutions, because I wasn't sure which one would be the quickest to run. I used .chop to cut the final comma off the string, and experimented with individual string characters to manipulate certain characters in the string.

# How did you initially iterate through the data structure?

# Initially I iterated through integer division, which worked well.

# Do you feel your refactored solution is more readable than your initial solution? Why?

# I wouldn't say they are more readable because they are more complicated, but they are certainly more effective and return the correct result, which my initial solution only did some of the time.