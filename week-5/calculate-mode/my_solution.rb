# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: Kevin Niu]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?

# An array

# What is the output? (i.e. What should the code return?)

# An array containing the most frequently used elements from the input array

# What are the steps needed to solve the problem?

# 1. Create a new hash
# 2. Iterate through the the original array
# 3. For each element in the array, check if there is a matching key in the hash
#   a. If the key does not exist, create a new key with a value = 1 (this represents the count)
#   b. If the key does exist, increase the key's value by 1
# 4. Find what is the highest count
# 5. Return an array with all keys whose value equals the highest count

# 1. Initial Solution


def mode(input_array)
  counts = Hash.new

  # i=0
  # while i < input_array.length
  #   if counts.has_key?(input_array[i])
  #     counts[input_array[i]]+=1
  #   else
  #     counts[input_array[i]]=1
  #   end
  #   i+=1
  # end

  input_array.each do |element|
    if counts.has_key?(element)
      counts[element]+=1
    else
      counts[element]=1
    end
  end

  # puts counts

  max=0

  counts.each do |word,count|
    if count > max
      max = count
    end
  end

  # puts max

  output_array = Array.new

  counts.each do |word,count|
    if count == max
      output_array.push(word)
    end
  end

  p output_array

end

# mode(["hello","hello","there", "there"])

# 3. Refactored Solution

def mode(input_array)

 counts = Hash.new(0)
 input_array.each do |element|
     counts[element] += 1
 end

 output_array = Array.new

 counts.each do |word, count|
   if count == counts.values.max
     output_array << word
   end
 end

 return output_array

end

# 4. Reflection

=begin

Which data structure did you and your pair decide to implement and why?

We used a hash to capture the counts for each word, because we wanted to correlate a key (the word) with a value (its count)

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?

Yes, very much so. In our pseudocode we successfully identified each of the necessary steps that our ended up using.

What issues/successes did you run into when translating your pseudocode to code?

We had some trouble with the code syntax around the iterative loop. Once we got our syntax down, we just followed our pseudocode to the step.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

When we couldn't get the .each iteration to work, we used a manual counter to make sure we were successfully assigning values with the hash. When that worked, we found the proper .each syntax and switched between those easily.  When refactoring we found three good methods: .values (only considers the values in a hash), .max (automatically finds the max without having to create a new variable), and << (automatically joins an element to an array). These weren't difficult to implement, since we were both familiar with chained methods.

end