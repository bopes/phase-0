# Introduction to Inheritance

# I worked on this challenge [by myself, with: ].


# Pseudocode
=begin

Data points:
city - LocalCohort
students - both GlobalCohort, LocalCohort
name - both GlobalCohort, LocalCohort
p0_start_date - both GlobalCohort, LocalCohort
immersive_start_date - both GlobalCohort, LocalCohort
graduation_date - both GlobalCohort, LocalCohort
email_list - both GlobalCohort, LocalCohort
num_of_students - both GlobalCohort, LocalCohort

Methods:
add_student - Add a student to a cohort, GlobalCohort
remove_student - Remove a student from a cohort, GlobalCohort
currently_in_phase - Calculates phase (0,1,2,3) based on date, GlobalCohort
graduated? - Checks whether the cohort has graduated from DBC and returns a Boolean, GlobalCohort
=end







# Initial Solution
=begin

class GlobalCohort

  attr_accessor :students, :name, :p0_start_date, :immersive_start_date, :graduation_date, :email_list, :num_of_students

  def initialize(students, name, p0_start_date, immersive_start_date, graduation_date, email_list, num_of_students)
    @students = students
    @name = name
    @p0_start_date = Time.new(p0_start_date[2], p0_start_date[0], p0_start_date[1])
    @immersive_start_date = Time.new(immersive_start_date[2], immersive_start_date[0], immersive_start_date[1])
    @graduation_date = Time.new(graduation_date[2], graduation_date[0], graduation_date[1])
    @email_list = email_list
    @num_of_students = num_of_students
  end

  def add_student(new_student)
    @students << new_student
    @num_of_students += 1
  end

  def remove_student(gone_student)
    @students.delete(gone_student)
    @num_of_students -= 1
  end

  def currently_in_phase
    begin_2 = @immersive_start_date + 60*60*24*7*3        # 3 weeks after immersive begin date
    begin_3 = begin_2 + 60*60*24*7*3                      # 6 weeks after immersive begin date
    if Time.now.between?(@p0_start_date, @immersive_start_date)
      puts "Currently in Phase 0"
    elsif Time.now.between?(@immersive_start_date, @begin_2)
      puts "Currently in Phase 1"
    elsif Time.now.between?(@begin_2, @begin_3)
      puts "Currently in Phase 2"
    elsif Time.now.between?(@begin_3, @graduation_date)
      puts "Currently in Phase 3"
    else
      puts "Not in session"
    end
  end

  def graduated?
    p Time.now > @graduation_date
  end

end

class LocalCohort < GlobalCohort

  attr_accessor :students, :name, :p0_start_date, :immersive_start_date, :graduation_date, :email_list, :num_of_students, :city

  def initialize(students, name, p0_start_date, immersive_start_date, graduation_date, email_list, num_of_students, city)
    @students = students
    @name = name
    @p0_start_date = Time.new(p0_start_date[2], p0_start_date[0], p0_start_date[1])
    @immersive_start_date = Time.new(immersive_start_date[2], immersive_start_date[0], immersive_start_date[1])
    @graduation_date = Time.new(graduation_date[2], graduation_date[0], graduation_date[1])
    @email_list = email_list
    @num_of_students = num_of_students
    @city = city
  end

end

=end






# Refactored Solution

class GlobalCohort

  attr_reader :students, :name, :p0_start_date, :immersive_start_date, :graduation_date, :email_list, :num_of_students

  def initialize(students, name, p0_start_date, immersive_start_date, graduation_date, email_list, num_of_students)
    @students = students
    @name = name
    @p0_start_date = Time.new(p0_start_date[2], p0_start_date[0], p0_start_date[1])
    @immersive_start_date = Time.new(immersive_start_date[2], immersive_start_date[0], immersive_start_date[1])
    @p2_start_date = @immersive_start_date + (60*60*24*7*3)       # 3 weeks after immersive begin date
    @p3_start_date = @immersive_start_date + (60*60*24*7*6)       # 6 weeks after immersive begin date
    @graduation_date = Time.new(graduation_date[2], graduation_date[0], graduation_date[1])
    @email_list = email_list
    @num_of_students = num_of_students
  end

  def show
    puts "Student Count: #{@num_of_students}"
    puts "Students: #{@students}"
    puts "Emails: #{@email_list}"
    puts "Cohort name: #{@name}"
    puts "Phase 0 Start Date: #{@p0_start_date.month}/#{@p0_start_date.day}/#{@p0_start_date.year}"
    puts "Immersive Start Date: #{@immersive_start_date.month}/#{@immersive_start_date.day}/#{@immersive_start_date.year}"
    puts "Gradution Date: #{@graduation_date.month}/#{@graduation_date.day}/#{@graduation_date.year}"
  end

  def add_student(new_student)
    @students << new_student
    @num_of_students += 1
    @students
  end

  def remove_student(gone_student)
    @students.delete(gone_student)
    @num_of_students -= 1
    @students
  end

  def currently_in_phase
    today = Time.now
    case
    when today.between?(@p0_start_date, @immersive_start_date)
      "Currently in Phase 0"
    when today.between?(@immersive_start_date, @p2_start_date)
      "Currently in Phase 1"
    when today.between?(@p2_start_date, @p3_start_date)
      "Currently in Phase 2"
    when today.between?(@p3_start_date, @graduation_date)
      "Currently in Phase 3"
    else
      "Not in session"
    end
  end

  def graduated?
    Time.now > @graduation_date
  end

end


class LocalCohort < GlobalCohort

  attr_reader :city

  def initialize(students, name, p0_start_date, immersive_start_date, graduation_date, email_list, num_of_students, city)
    super(students, name, p0_start_date, immersive_start_date, graduation_date, email_list, num_of_students)
    @city = city
  end

  def show
    super
    puts "City: #{@city}"
  end

end






# Driver Code

rock_doves = GlobalCohort.new(["Charlie Lee", "Kev Niu"], "Rock Doves", [1,18,2016], [3,21,2016], [5,30,2016], ["clcblee@gmail.com", "kev.niu@gmail.com"], 2)

rock_doves_sf = LocalCohort.new(["Charlie Lee", "Kev Niu"], "Rock Doves", [1,18,2016], [3,21,2016], [5,30,2016], ["clcblee@gmail.com", "kev.niu@gmail.com"], 2, "San Francisco")

puts
rock_doves.show
puts
puts rock_doves.add_student("Kari Giberson")
puts
puts rock_doves.remove_student("Kari Giberson")
puts
puts rock_doves.currently_in_phase
puts
puts rock_doves.graduated?
puts
puts "---------------"
puts
puts rock_doves_sf.show
puts
puts rock_doves_sf.students







# Reflection
=begin

What concepts did you review or learn in this challenge?

I learned about class inheritance. You can create classes that inherit methods and properties from a superclass, so you don't have to rewrite the same code you used earlier.

What is still confusing to you about Ruby?

There are still methods we've used earlier that I forget how to use. I also have lots of opportunity to refactor my code more than I'm doing.

What are you going to study to get more prepared for Phase 1?

I'm going to work through as many of the review challenges as I can before arriving onsite.

=end