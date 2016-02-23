
# Pseudocode
# Inputs:
#   - one array of names
# Outputs:
#   - a series of arrays owhere each array represents one accountability group
# Steps:
#   - set the max number of people per group
#   - create an array for each group
#   - iterate through the array's names and assign each one to a group
#   - print all of the arrays









# Initial Solution
#
# def assign_groups(names)
#
#   num_groups=names.length/5
#
#   person_group_ids = Hash.new
#
#   i=1
#   names.each do |person|
#     person_group_ids[person]=i%num_groups
#     i += 1
#   end
#
#   j=0
#   num_groups.times do
#     p person_group_ids.select{|person,id| id == j}
#     j += 1
#   end
#
# end










# Increased Complexity

# Things to add:
#   -only show the person's name in the group - DONE
#   -name the groups (Group 1, Group 2, etc.) - DONE
#   -Display the groups in a pleasing way - ALMOST DONE
#   -Set the number of people in a group using an argument - DONE
#   -Save the group members in a single object
#   -Store all groups in a hash









# Refactored Solution

def assign_groups(names, max_group_size)

  num_groups=names.length/max_group_size

  person_group_ids = Hash.new

  i=1
  names.each do |person|
    person_group_ids[person]=i%num_groups
    i += 1
  end

  groups = Hash.new

  j=1
  num_groups.times do
    group_j=""
    person_group_ids.select{|person,id| id == j-1}.each do |person, id|
       group_j << "#{person}, "
    end
    group_j = group_j[0..-3]
    groups[j] = group_j
    j += 1
  end

  groups.map {}

  groups.each do |group, members|
    p "Group #{group}: #{members}"
  end

end









# Production Run

cohort=[
"Adam Pinsky",
"Afaan Naqvi",
"Alana Farkas",
"Andrew Crowley",
"Andrew Vathanakamsang",
"Anna Lansfjord",
"Benjamin Heidebrink",
"Blair White",
"Brad Lindgren",
"Brian Donahue",
"Brittney Braxton",
"Camila Crawford",
"Charlie Lee",
"Chunyu Ou",
"Daniel Homer",
"Daniel Shapiro",
"David Kaiser",
"David Ramirez",
"Daniel Deutsch",
"Emily Osowski",
"Emmet Garber",
"Eric Gumerlock",
"Greg Toprak",
"Hanna Taylor",
"Dave Hostios",
"Jack Baginski",
"Jaclyn Feminella",
"Jasmeet Chatrath",
"Jason Allen",
"Jon Norstrom",
"jonathan nicolas",
"Joseph Yoo",
"Joshua Lugo",
"Joshua Wu",
"Julia Giraldi",
"Kari Giberson",
"Katherine Broner",
"Kevin Fowle",
"Kevin Niu",
"Kevin Perkins",
"Andrew Larson",
"Leo Kukhar",
"Li-Lian Ku",
"Erica Lloyd",
"Charlotte Manetta",
"Marita Deery",
"Michael Verthein",
"Milorad Felbapov",
"Brian Mosley",
"Nick Russo",
"Noah Schutte",
"Oscar Delgadillo",
"James Robinson",
"Ryan Dempsey",
"Ryan W.",
"Sami Zhang",
"Saralis Rivera",
"Sean Norton",
"Shyh Hwang",
"Sydney Rossman-Reich",
"Theo Paul",
"Tomasz Sok",
'Wesley El-Amin'
]

assign_groups(cohort, 7)





# Reflection
#
# What was the most interesting and most difficult part of this challenge?
#
# I liked that this was so open ended, but is not SO complicated that we need a lot of instruction. It definitely feels like a step up from the other challenges we've done so far. The most difficult part was while refactoring I increased the complexity a lot. This included placing an iteration inside a hash, which took some time to figure out.
#
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
#
# I'm not sure I am. When writing the pseudocode I know the primary steps I need to take, but not the details. Then when I'm actually writing the code, I spend a lot of time figuring out the details of how to execute the primary steps. So the steps laid out during pseudocode don't really help simplify the problem, or at least they don't seem to.
#
# Was your approach for automating this task a good solution? What could have made it even better?
#
# I think it's pretty good. I would like to output both a string (for easy reading) and an array (easier reference for future code) containing each group roster, but it would be pretty easy to slice the current string outputs into arrays for other uses. I also would like the rename the hash keys from "1" to "Group 1", but that is a nice to have.
#
# What data structure did you decide to store the accountability groups in and why?
#
# I stored the groups in a hash, where each key was the group # and each value was an array containing the students' names.
#
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
#
# I used .select to choose the people for each group, and I tried to use .map to change the keys but couldn't get it to work within my timeframe. This exercise definitely gave me more exposure to hashes than I had previously.