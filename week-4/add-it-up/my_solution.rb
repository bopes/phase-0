# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array of numbers
# Output: a single number (either integet or float)
# Steps to solve the problem.

=begin
1. take first number in array and add each subsequent number in the array one by one
2. Want to make sure that total numbers added are equal to array length
3. keep the sum of the numbers while adding additional numbers
4. out the final sum
=end

# 1. total initial solution

def total(array)
  sum=0
  i=0
  while i<array.length
    sum=sum+array[i]
    i=i+1
  end
  sum
end

# 3. total refactored solution

#NO REFACTOR NEEDED

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: an array
# Output: A string with the first word capitalized and a period at the end.
# Steps to solve the problem.
=begin
1. join all array elements into a string, separated by a space
2. capitalize first letter of string
3. Add a period to end of string
4. output the string
=end

# 5. sentence_maker initial solution

def sentence_maker(array)
  sentence = array.join(" ")
  sentence.capitalize + "."
  # sentence=""
  # i=0
  # while i<array.length
  #   sentence=sentence+array[i]
  #     if i!=array.length-1
  #       sentence=sentence+" "
  #     end
  #   i=i+1
  # end
  # sentence=sentence.capitalize+"."
end

# 6. sentence_maker refactored solution

def sentence_maker(array)
  sentence = array.join(" ")
  sentence.capitalize + "."
  # sentence=""
  # i=0
  # while i<array.length
  #   sentence=sentence+array[i].to_s
  #     if i!=array.length-1
  #       sentence=sentence+" "
  #     end
  #   i=i+1
  # end
  # sentence=sentence.capitalize+"."
end

