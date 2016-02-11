# Factorial

# I worked on this challenge [by myself, with: Brian Mosley].

#Pseudocode

=begin

1.) Created a counter varaible called "n"

2.) Set another variabale, "result", as a default of 1.

3.) Create a while loop to run until the counter goes to zero. Once the counter reaches zero, the loop stops.

4.) In the loop we multiply the result by the newest amount is, that is decrease by 1, each time the loop repeats itself.

5.) At the end, we print the result.

=end

# Your Solution Below
def factorial(number)

  n = number
  result = 1
  while n >= 1
    result = result * n
    n = n - 1
  end

  p result

end

