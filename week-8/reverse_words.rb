# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# Input: a sentence (string)
# Output: a string with all words from input sentence reversed
# 1. Create method that accepts string as argument
# 2. Split string along spaces into an array
# 3. Iterate through the array
#   a. Reverse each string in the array
# 4. Concatenate resulting array into a single string, separated by spaces
# 5. Return the final string


# Initial Solution

def reverse_words(input_string)
  input_array = input_string.split(" ")
  output_string = ""
  input_array.each do |word|
    output_string << "#{word.reverse!} "
  end
  output_string[0..-2]
end


# Refactored Solution





# Reflection