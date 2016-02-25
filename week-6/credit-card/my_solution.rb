# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: a sixteen digit card number
# Output: true or false confirmation that it's a valid card #
# Steps:
#   1. Convert given integer into string
#   2. Split string into array, with each character its own element
#   3. Starting with index 0, multiply every other element by 2
#   4. Apply a code block to each element that converts 2-digits numbers into the sum of their digits
#   5. Sum all digits in array
#   6. Divide sum by 10
#   7. If no remainder, return true. Otherwise return false









# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

#   # attr_accessor :new_array

#   def initialize(card_number)
#     @string_number = card_number.to_s
#     raise ArgumentError.new("Not a valid card. Must be 16 digits.") unless @string_number.length == 16
#   end

  # def convert_to_array
  #   @new_array = @string_number.split(//)
  # end

  # def even_map(array)
  #   array.map {|element|
  #     if array.index.even?
  #       element = 2 * element
  #     end}
  #   puts array
  # end

    # def check_card
    #   array_version = @string_number.split(//)
    #   array_version.index.even.map! {|element| element * 2 }
    #   p array_version
    # end

#     def check_card
#       array_version = @string_number.split(//)
#       array_version.map!.with_index { |number, index|
#         if index % 2 ==0
#           number = number.to_i * 2
#         else
#           number = number.to_i
#         end }
#       array_version.map! {|number|
#         number = number/10 + number%10 }

#       sum = 0
#       array_version.each do |number| sum += number
#       end
#       if sum % 10 == 0
#         p true
#       else
#         p false
#       end
#     end

# end







# Refactored Solution

class CreditCard

  def initialize(card_number)
    @string_number = card_number.to_s
    raise ArgumentError.new("Not a valid card. Must be 16 digits.") unless @string_number.length == 16
    @sum = 0
    @array_version = Array.new
  end

  def split_string
    @array_version = @string_number.split(//)
    @array_version.map! {|number| number.to_i}
  end

  def double_even_elements
    @array_version.map!.with_index { |number, index|
      if index.even?
        number = number * 2
      else
        number = number
      end
    }
  end

  def convert_double_digit_elements
    @array_version.map! {|number|
      number = number/10 + number%10 }
  end

  def sum_of_all_elements
    @array_version.each {|number| @sum += number}
  end

  def check_ten
    if @sum % 10 == 0
      p true
    else
      p false
    end
  end

  def check_card
    split_string
    double_even_elements
    convert_double_digit_elements
    sum_of_all_elements
    check_ten
  end

end







# Driver Code

  test = CreditCard.new(4563960122001999)

  test.check_card

# Reflection

=begin
What was the most difficult part of this challenge for you and your pair?

The most difficult part were keeping track of the object type when iterating, using instance variables, and finding every other element in an array to manipulate.

What new methods did you find to help you when you refactored?

#split() - This let us break a string into an array
#with_index - this let us iterate over an array, but like a hash we could access both the value AND the index for that value.
#even? - this let us validate if an integer value as even or not

What concepts or learnings were you able to solidify in this challenge?

This definitely solidified how to set up instance variables. It also helped with implicit return values and ordering your methods to maintain your order. I thought it was easier to just create one big method that included all aspects of the #check_method call, but am glad we broke it out in our refactored solution, since that helped solidify the instance variable concepts.
=end