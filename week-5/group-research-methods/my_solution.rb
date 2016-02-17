# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
# Release 2: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# Convert all the elements inside the array to strings using map otherwise you'll get errors.
# Then use select method to return an array. Use it to search for what you are looking for.
# Search each elelment in the array using the include? method which will determine whether the letter is a substring of each elelment.
def my_array_finding_method(source, thing_to_find)
  array_of_strings = source.map {|element| element.to_s}
  array_of_strings.select {|element| element.include?(thing_to_find)}
end

# Release 2: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
# Create a new hash using the select method
# Select will go through each item in the hash and return a new hash that only includes what we searched for, in this case values matching age.
# The new hash now has the key value pairs of the pets matching the age, but we only want to return the pet name (keys).

def my_hash_finding_method(source, thing_to_find)
  match_age = source.select {|key, value| value == thing_to_find}
  match_age.keys
end

# Identify and describe the Ruby method(s) you implemented.
#.map - Iterates through an array and returns a new array where each element has been modified based on the command. I used it to make all the elements in the array strings.
#.select - Iterates through an array and returns a new array based on your selection.
#.include? - Searches a string for a substring
#.keys - Returns the keys of a hash as an array


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# Researching was fairly simple after writing out some pseudocode. Once you figure out what you are trying to do each step, it makes it easy to google for methods in ruby docs that could work with each step.

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.map! do |x|
    x.is_a?(Integer) ?
      x + thing_to_modify : x
  end
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each do |key, value|
    source[key] = (value + thing_to_modify)
  end
end
=begin
Release 2:
Identify and describe the Ruby method(s) you implemented
# I used map! which takes whatever the code block I use, and then changes the original substance of the array.
# is_a?(Integer) tests to see if the item is an integer, in which case - do the code.
# .each was just used for the hash because whatever changes you make to a hash or available right away.

Release 3:
What did you learn by reasearching and then explaining yourself to others?
I learned that breaking the problem into smaller steps is the key to good research because then you can research just parts of the problem and then you begin to build it as you go. As far as explaining it to people, I think it's just like the rubber duck technique. It just helps your own understanding of an idea when you have to explain it to others.
=end


# Person 3
def my_array_sorting_method(source)
  source.sort_by {|x| x.to_s }
end

def my_hash_sorting_method(source)
   source.sort_by {|key, value| value }
end

=begin
Release 2:
Identify and describe the Ruby method(s) you implemented:
I used the .sort_by method to sort my array and then my hash.
In order to sort an array with integers and strings as objects, I had to convert everything to a string first using x.to_s since this will sort everything as a string without modifying the actual array.
For the hash, I used .sort_by to sort the pairs by their values, rather than their keys. If I had just used .sort they would have been sorted by keys instead of their values. This way, the method returns an array of the key value pairs but sorted by value since I specified value in the .sort_by.

Release 3:
What did you learn by reasearching and then explaining yourself to others?
For me, researching simple solutions really helps prevent me from writing a very long and convoluted code, especially when I know there is a much simpler solution. I also saw a number of different ways the result could be found which reinforces the idea that there are multiple ways to write code in order to preform one task. Writing an explanation to other people definitely helps me understand the code I used more fully and it makes me feel more confident implementing it in the future.
=end


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if {|x| x.to_s.include?(thing_to_delete.to_s)}
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete_if {|key,value| key.include?(thing_to_delete)}
end

=begin
Identify and describe the Ruby method(s) you implemented:
.delete_if {|x| ...critieria... }
    This method exists for both arrays and hashes. It iterates through the designated array/hash, and if the criteria evaluates as TRUE for an element, that element is then deleted from the array/hash.

.include?( ...critieria... )
    This method exists for strings and evaluates as TRUE if the string contains the criteria
    In my_hash_deletion_method!, an alternative would be to use " == " instead of .include?, if the method needed to match to the key exactly. However, the instructions weren't clear in this case so I used .include? to mirror my_array_deletion_method!.

.to_s
    I used this on all elements in the source array in my_array_deletion_method! so that the .include? method would be available for all elements. Sometimes the elements were numbers, so it would result in an error if it tried to run .include? on an integer.

Ruby Docs tricks - I looked for a method containing 'delete' and found both the .delete and  .delete_if methods. I also remember the .include? method for strings, so I used Ruby Docs to verify that it exists the way I remembered.
=end

# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#