# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require and require_relative are built in methods that accept strings as arguments. require tries to search for a specific Ruby library (gem). require_relative allows you to search for an actual file with code in it.
#

require_relative 'state_data'

class VirusPredictor

  # Initializes an instance of the class. Defines three separate instance variables, based on the data for an individual state
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Runs the predicted deaths and speed of spread for the instance. These are both instance methods within this class.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # This method takes the value of population density. Based on that value, it calculates the number of deaths. It will print the number of deaths in that state to the console.
  def predicted_deaths
    case @population_density
      when 0 .. 49 then number_of_deaths = (@population * 0.05).floor
      when 50 .. 99 then number_of_deaths = (@population * 0.1).floor
      when 100 .. 149 then number_of_deaths = (@population * 0.2).floor
      when 150 .. 200 then number_of_deaths = (@population * 0.3).floor
      else number_of_deaths = (@population * 0.4).floor
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

  # This method calculates how many months it will take for the virus to spread across the state. Currently, it's based entirely off the population density. It puts the calculated number of months to the console.
  def speed_of_spread #in months
    case @population_density
      when 0 .. 49 then speed = 2.5
      when 50 .. 99 then speed = 2
      when 100 .. 149 then speed = 1.5
      when 150 .. 200 then speed = 1
      else speed = 0.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# Pseudocode
# 1. Take the STATE_DATA hash. We need to access each key with that hash, as well as the value hashes for each of those keys.

STATE_DATA.each do |state,data|
  state_report = VirusPredictor.new(state,data[:population_density],data[:population])
  state_report.virus_effects
end


#=======================================================================
# Reflection Section

=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
The two syntaxes are "rocket notation" and "symbol notation". Rocket notation keeps the datatype of the key whatever it may be - a string, integer, float, whatever. The symbol notation requires that the key be a symbol. This is better for multiple records having the same structure, as the symbols carry the same ID, resulting in quicker calculations.


What does require_relative do? How is it different from require?
require_relative searches for other files relative to your base file for reference. require is much broader, and searches within your Ruby library for other files, and is more commonly used for gems.


What are some ways to iterate through a hash?
You can use any enumerable iterator. We used #each, because we wanted to display the same values for each key in the hash.


When refactoring virus_effects, what stood out to you about the variables, if anything?
The variables are constant within the class, so you don't need to use arguments whenever you reference an instance variable.


What concept did you most solidify in this challenge?
I solidified the case...when flow syntax the most. We looked up how to use ranges, which makes it much more useful in a situation like this where you want to use the same case for a broad range of possible values.
=end