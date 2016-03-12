# OO Basics: Student


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

class Student
  attr_accessor :scores, :first_name, :org_index

  def initialize(first_name, scores)   #Use named arguments!
    @first_name = first_name
    @scores = scores
  end

  def average
    sum = 0
    scores.each do |score|
      sum += score
    end
    sum / scores.length
  end

  def letter_grade
    case average/10
      when 10, 9
        "A"
      when 8
        "B"
      when 7
        "C"
      when 6
        "D"
      else
        "F"
    end
  end

end

def linear_search(array, search_name)
  index = -1
  array.each do |student|
    if student.first_name == search_name
      index = array.index(student)
    end
  end
  index
end

# Pseudocode
# 1. Add an index key to every object in the array
# 2. Sort the array alphabetically into a new array
# 3. Check the searched name agains the first_name in the middle of the new array
#  A. If the search name equals the first name, return the index value
#  B. If the search name comes before the middle element:
#   i.  Slice the first half of the array out
#   ii. Repeat beginning at step 2
#  C. If the search name comes after the middle element:
#   i.  Slice the back half of the array out
#   ii. Repeat step 3
#  D. If the array is empty, return -1

# def binary_search(sorted_array, search_name)
#   mid = sorted_array.length/2
#   if sorted_array.length > 0
#     case sorted_array[mid] <=> search_name
#     when -1
#       sorted_array.slice!(0..mid)
#       binary_search(sorted_array, search_name)
#     when 1
#       sorted_array.slice!(mid+1..-1)
#       binary_search(sorted_array, search_name)
#     when 0
#       sorted_array[mid].index(search_name)
#     end
#   else
#     -1
#   end

# end


students = [
  Student.new('Alex', [ 100, 100, 100,   0, 100]),
  Student.new('Brad', [  93,  96,  87,  90,  99]),
  Student.new('Carl', [  83,  86,  77,  80,  89]),
  Student.new('Dave', [  73,  76,  67,  70,  79]),
  Student.new('Eddy', [  63,  66,  57,  60,  69])
]


# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# Initial Tests:

# p students[0].first_name == "Alex"
# p students[0].scores.length == 5
# p students[0].scores[0] == students[0].scores[4]
# p students[0].scores[3] == 0


# # Additional Tests 1:

# p students[0].average == 80
# p students[0].letter_grade == 'B'

# # Additional Tests 2:

# p linear_search(students, "Alex") == 0
# p linear_search(students, "NOT A STUDENT") == -1

p binary_search(students, "Alex")



# Reflection