# Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode
=begin
1. Create an object Car with two instance variables - model, color
2. Define a method within Car to set a variable distance (integer)
    a. Set a variable equal to the distance to the destination
    b. Print the distance to the console
3. Define a method within Car to retrieve a speed variable (integer)
    a. Retrieve the new speed as an argument
    b. Print the speed to the console
4. Define a method within Car to turn left
    a. Turn method should receive 'left' or 'right' as the argument
    b. Print the new direction to the console
5. Define a method within Car to turn right
    a. Addressed with #4 - Turn method
6. Define a method within Car to adjust your speed to a new level
    b. Addressed with #3 - Set Speed method
7. Define a method within Car to track your distance traveled
    a. Set a variable for distance traveled
    b. Distance traveled will increased every time you set a new distance
    c. Method will print distance traveled's current value to the console
8. Define a method within Car to stop the car
    a. Addressed with #3 - Set Speed method
    b. If speed = 0, print that the car is stopped to the console
9. Each method within Car should print the action to the console
    a. This is addressed within all methods
=end

# 3. Initial Solution

# class Car

#   attr_reader :distance_traveled, :speed

#   def initialize (car_model, color)
#     @car_model = car_model
#     @color = color
#     @distance_traveled = 0
#     @speed = 0
#   end

#   def travel_distance(distance)
#     puts "You drove #{distance} miles."
#     @distance_traveled += distance
#   end

#   def set_speed (new_speed)
#     if new_speed == 0
#       puts "You have stopped."
#     elsif new_speed > @speed
#       puts "You increased to #{new_speed} mph."
#     elsif new_speed < @speed
#       puts "You decreased to #{new_speed} mph."
#     else
#       puts "You are traveling at #{@speed} mph."
#     end
#     @speed = new_speed
#   end

#   def turn(direction)
#     puts "You made a #{direction} turn."
#   end

# end


# 4. Refactored Solution

class Car

  # attr_reader :distance_traveled, :speed

  def initialize (car_model, color)
    puts "You get in your #{color} #{car_model} and start the engine."
    @distance_traveled = 0
    @speed = 0
    @pizzas = []
  end

  def travel_distance(distance)
    puts "You drive #{distance} miles."
    @distance_traveled += distance
  end

  def set_speed(new_speed)
    if new_speed == 0
      puts "You have stopped."
    elsif new_speed > @speed
      puts "You increase to #{new_speed} mph."
    elsif new_speed < @speed
      puts "You decrease to #{new_speed} mph."
    else
      puts "You are already at #{@speed} mph."
    end
    @speed = new_speed
  end

  def turn(direction)
    puts "You make a #{direction} turn."
  end

  def stock(*new_pizzas)
    new_pizzas.each {|new_pizza|
      @pizzas << new_pizza
      puts "You load #{new_pizza.name} into your car"
    }
  end

  def deliver_pizza
    puts "You deliver #{@pizzas[0].name}."
    @pizzas = @pizzas.slice(1..@pizzas.length)
  end

  def speed
    puts "You are driving #{@speed} mph."
  end

  def distance_traveled
    puts "You have driven #{@distance_traveled} miles."
  end

end

class Pizza

  attr_reader :toppings, :name

  def initialize (price, *toppings)
    @price = price
    @toppings = []
    @name = "a pizza with "
    toppings.each {|topping|
      @toppings << topping
      @name += "#{topping}, "
    }
    @name = @name.slice(0..-3)
  end

end



# 1. DRIVER TESTS GO BELOW THIS LINE

pepperoni = Pizza.new(9.99,"pepperoni")
cheese = Pizza.new(7.99, "cheese")
everything = Pizza.new(11.99, "cheese", "pepperoni","veggies")

my_car = Car.new("'95 Maxima", "white")
my_car.stock(pepperoni,cheese,everything)
my_car.set_speed(25)
my_car.travel_distance(0.25)
my_car.set_speed(0)
my_car.deliver_pizza
my_car.turn("right")
my_car.set_speed(35)
my_car.travel_distance(1.5)
my_car.speed
my_car.set_speed(15)
my_car.travel_distance(0.25)
my_car.set_speed(0)
my_car.deliver_pizza
my_car.turn("left")
my_car.set_speed(35)
my_car.travel_distance(1.4)
my_car.set_speed(0)
my_car.deliver_pizza
my_car.distance_traveled


# 5. Reflection
#
# What concepts did you review in this challenge?
#
# I reviewed class creation and pair coding.
#
# What is still confusing to you about Ruby?
#
# I still have more to internalize about implicit returns.
#
# What are you going to study to get more prepared for Phase 1?
#
# I've done 3 review challenges and 4 new concept challenges. I still have 4 review challenges left and 2 new concepts challenges. I'm going to try to finish them all and find good refactor steps for each.