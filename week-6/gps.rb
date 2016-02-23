# Your Names
# 1)
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.

# First case: you can make at least one the intended items
#    If you have leftover ingredients tell user how many are remaining
#    If enough ingredients suggest another item to make
# Second case: you cannot make any of your intended items
#    Suggest what item can be made

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item_to_make} is not a valid input") unless library.has_key?(item_to_make)

  serving_size = library[item_to_make]
  remaining_ingredients = num_of_ingredients % serving_size

  if num_of_ingredients >= serving_size
    print "You can make #{ num_of_ingredients/serving_size } of #{ item_to_make }. "
  else
    print "You do not have enough ingredients to make #{ item_to_make }. "
  end

  case remaining_ingredients
    when 6 then print "You can make one cake and one cookie."
    when 5 then print "You can make one cake."
    when 1,2,3,4 then print "You can make #{ remaining_ingredients } cookies."
  end

  puts

end
serving_size_calc("pie", 4)
serving_size_calc("pie", 13)
serving_size_calc("cake", 5)
serving_size_calc("cake", 7)
serving_size_calc("cookie", 1)
serving_size_calc("cookie", 10)
serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection

# What did you learn about making code readable by working on this challenge?

# The more you can condense your code into English-sounding methods, the more intuitive it becomes to read. That's much easier than trying to parse through manual iterators. Also, I find that lots of comments in code are distracting and make it harder to interpret.

# Did you learn any new methods? What did you learn about them?

# Yes, we used the hash#has_key? method to check if an item was included in the library. We also used the case/when flows to deliver a message to the user at the end, so I learned how to condense those using commas (when 1,2,3,4) and putting everything on a single line.

# What did you learn about accessing data in hashes?

# It's easy to use hashes to reference data, as long as you have easy access to its list of keys, or an argument you can use as a key.

# What concepts were solidified when working through this challenge?

# We definitely benefitted from pseudocode, as well as Ruby's ability to condense code into a single line for easy reading.