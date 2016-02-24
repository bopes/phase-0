 # RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner",
                        ["eagle", "par", ["FORE", "hook"]]]]

# attempts:10
# ============================================================
p array[1][1][1][0]
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

p number_array

# number_array.each do |element|
#   if element.kind_of?(Array)
#     element.map!{ |element| element += 5 }
#   elsif
#     element = element + 5
#   end
# end

number_array.map! { |element|
  if element.kind_of?(Array)
    element.map!{ |subelement| subelement += 5 }
  else
    element += 5
  end
}

p number_array

# test_array = [5,10,15,20]

# p test_array

# test_array.each do |x|
#   x += 5
# end

# p test_array


# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! { |element|
  if element.kind_of?(Array)
    element.map! { |subelement|
      if subelement.kind_of?(Array)
        subelement.map! {|trielement| trielement+"ly"}
      else
        subelement+"ly"
      end
    }
  else
    element + "ly"
  end
}

p startup_names

# Reflection

# What are some general rules you can apply to nested arrays?
#
# Nested arrays do a good job of organizing related data within a single entity. It's good to keep the same level of nests across your primary array, so that you don't have iterate through more nests than you need to.  It would also be a good idea to maintain strict ordering rules, so that you easily reference across multiple nested arrays without having to look it up each time.
#
# What are some ways you can iterate over nested arrays?
#
# You can iterate over nested arrays by placing workflos inside your other iterators. Then if needed, your iterator will then iterate through the subarrays at the same time.
#
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
#
# We modified the example DBC provided, only we used #map! instead of #each, since we wanted the action to be destructive. We thought it was a good option because it had a simple framework that we could think through. It looks like we could use a recursive method to accomplist this as well, but we didn't go down that path.