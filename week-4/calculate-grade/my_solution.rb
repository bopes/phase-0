# Calculate a Grade

# I worked on this challenge [by myself, with: ].

# Your Solution Below

def get_grade average
  if average >= 90
    'A'
  elsif average >=80 && average < 90
    'B'
  elsif average >= 70 && average < 80
    'C'
  elsif average >=60 && average < 70
    'D'
  elsif average <60
    'F'
  end
end