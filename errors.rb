# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
#   end
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# line 170
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end - it expected to see the keyword "end" somewhere but it didn't
# 5. Where is the error in the code?
# This isn't shown with a location, because the error is a missing word
# 6. Why did the interpreter give you this error?
# The definition never closes, only the 'while' loop does.

# --- error -------------------------------------------------------

# south_park

# 1. What is the line number where the error occurs?
# line 36
# 2. What is the type of error message?
# undefined local variable or method
# 3. What additional information does the interpreter provide about this type of error?
# the unnamed local variable/method is 'couth_park'
# 4. Where is the error in the code?
# It's the whole line
# 5. Why did the interpreter give you this error?
# south_park doesn't mean anything by itself. It needs to be defined as a local variable or a method.

# --- error -------------------------------------------------------

# cartman()

# 1. What is the line number where the error occurs?
# line 51
# 2. What is the type of error message?
# undefined method
# 3. What additional information does the interpreter provide about this type of error?
# the undefined method is called 'cartman()'
# 4. Where is the error in the code?
# it's all of line 51
# 5. Why did the interpreter give you this error?
# the method 'cartman()' is undefined. It needs to be defined before it can be run

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase

# 1. What is the line number where the error occurs?
# line 66
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# it shows the incorrect number of arguments (1 for 0)
# 4. Where is the error in the code?
# line 70, where the method tries to accept an argument for a method that doesn't use any
# 5. Why did the interpreter give you this error?
# the method doesn't specify the arguments it needs and then tries to accept one in line 70

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# line 85
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# the number of incorrect arguments
# 4. Where is the error in the code?
# it's line 89 when the method doesn't have any arguments
# 5. Why did the interpreter give you this error?
# the method is trying to execute without a specified argument



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# 106
# 2. What is the type of error message?
# wrong number of arguments
# 3. What additional information does the interpreter provide about this type of error?
# it specifies the wrong number of argument (1 for 2)
# 4. Where is the error in the code?
# line 110
# 5. Why did the interpreter give you this error?
# the method requires 2 arguments, but it only receives one

# --- error -------------------------------------------------------

# 5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# line 125
# 2. What is the type of error message?
# invalid object type
# 3. What additional information does the interpreter provide about this type of error?
# it specifies the method that is encountering the error "*"
# 4. Where is the error in the code?
# line 125, at the "5 *"
# 5. Why did the interpreter give you this error?
# This is tring to multiply the integer 5 by a string, which isn't allowed.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# line 140
# 2. What is the type of error message?
# zero division error
# 3. What additional information does the interpreter provide about this type of error?
# it specifies that the line is trying to divide a number by 0
# 4. Where is the error in the code?
# under the "/0"
# 5. Why did the interpreter give you this error?
# You can't divide by 0, so the computer can't calculate this

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# line 156
# 2. What is the type of error message?
# load error
# 3. What additional information does the interpreter provide about this type of error?
# it specifies which file can't be loaded
# 4. Where is the error in the code?
# it is the whole line 156
# 5. Why did the interpreter give you this error?
# because the file "cartmans_essay.md" doesn't exist in the current directory.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.


# Which error was the most difficult to read?

# The first error with a missing 'end' was the most difficult, because the error message's line didn't point to a specific line that needed to be fixed.

# How did you figure out what the issue with the error was?

# I knew it was related to the first set of code, so I reviewed it and noticed that it was missing and 'end' for the while loop.

# Were you able to determine why each error message happened based on the code?

# Yes, I was able to determine every error from reviewing the code. But knowing that each new section would have a bug made it easy to know where to look.

# When you encounter errors in your future code, what process will you follow to help you debug?

# First I'll reveiw the line and error type. That will help point me to the location and give me a semblance of what to look for. Sometimes the added details about the error itself will help refine the diagnosis further. Once I know the location and error type, I'll review the code to find the actual error.