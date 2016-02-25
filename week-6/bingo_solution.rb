# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.

=begin
Release 0: Pseudocode
Outline:

Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  1. define a method with no inputs
  2. method should randomly select a letter from 'bingo'
    a. select a random number 0-4
    b. return the corresponding letter from 'bingo'
  3. method should randomly select a number 1-100
    a. select a random number 0-99
    b. add 1
    c. return the sum
  4. return both letter and number in an array

 Check the called column for the number called.
  1. correspond the letter provided by the random selection with the correct index in the board's subarrays
  2. iterate through the subarrays to see if the random selection's number is present in that index for any subarray

If the number is in the column, replace with an 'x'
  1. If the random number is found, replace that subarray's value with 'X'

Display a column to the console
  1. iterate through the subarrays
  2. put a certain index from each subarray to the console

Display the board to the console (prettily)
  1. iterate through each subarray
  2. print each array to the console with identical spacing
=end






# Initial Solution
=begin

class BingoBoard

  attr_reader :bingo_board

  def initialize(board)
    @bingo_board = board
  end

  def call
    letter_index = rand(5)
    letter = "BINGO"[letter_index]
    number = rand(99)+1
    [letter_index,letter,number]
  end

  def check(call)
    puts
    puts "#{call[1]}-#{call[2]}!"
    puts
    @bingo_board.each do |row|
      if row[call[0]] == call[2]
        row[call[0]] = "X"
      end
    end
    display_board
  end

  def display_board
    puts "  B  I  N  G  O"
    @bingo_board.each do |row|
      row.each do |number|
        printf("%3s",number)
    end
    puts
    end
  end

end

=end






# Refactored Solution

def create_board
  # board = [[],[],[],[],[]]
  # board.map! { |row| row=[rand(15)+1,rand(15)+16,rand(15)+31,rand(15)+46,rand(15)+61] }
  board = Array.new
  5.times { board.push([rand(15)+1,rand(15)+16,rand(15)+31,rand(15)+46,rand(15)+61]) }
  board[2][2]="X"
  board
end

class BingoBoard

  def initialize(board)
    @bingo_board = board
    puts "New game! Here's your board..."
    display_board
  end

  def call
    letter_index = rand(5)
    letter = "BINGO"[letter_index]
    number = 15*letter_index+rand(15)+1
    [letter_index,letter,number]
  end

  def check(call)
    puts
    puts "#{call[1]}-#{call[2]}!"
    @bingo_board.each do |row|
      if row[call[0]] == call[2]
        row[call[0]] = "X"
      end
    end
    display_board
  end

  def display_board
    puts
    puts "  B  I  N  G  O"
    @bingo_board.each do |row|
      row.each do |number|
        printf("%3s",number)
      end
    puts
    end
  end

end









# DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE


new_game = BingoBoard.new(create_board)

5.times { new_game.check(new_game.call) }






# Reflection
=begin

How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

Psuedocoding actually wasn't too bad. I was able to break down each step pretty quickly, and I followed it pretty closely in my initial solution. I've come to this strategy where I outline the code in segments, rather than just listing the steps. This helps organize my thoughts and is easier to translate later on.


What are the benefits of using a class for this challenge?

Using a class is nice because you can create multiple boards and call the methods on a speciic board easily.


How can you access coordinates in a nested array?

I think so. I'm able to iterate within an array pretty well, and I can call individual elements very easily (see my #create_board method where I always set the center space equal to X)


What methods did you use to access and modify the array?

#rand() - I used this a lot to set up a new board and call a random space.
#each - I used this to iterate through an array (nested or not) and apply a code block
#printf - This method let me set a constant width for my columns when printing the board to the console. It was better than jstu using a space in the string, because it handles both 1- and 2-digit entries well, including "X".
#map! - I used this for my create_board method, where I overwrote the blank arrays with the values for each new random board.
#push - I replaced the #map! line in the #create_board method with this, because it seems like a "better" approach and is less reliant on brute force. I'm not sure it's actually easier to compute, but I wanted to make sure I could actually do it this way, too.


Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?

#printf - this let's you set a fixed width when you're printing a string. To set a fixed width, it's used like this:
  printf("%3s","string"). In this case, the 3 indicates how many characters wide to make the printout, and the "string" is inserted where the "s" is located. This right-justifies the string. To make it left-justified, you would use "%-3s".

How did you determine what should be an instance variable versus a local variable?

The only instance variable I used was the @bingo_board, since that was the only variable used across instance methods on its own. All other variables were passed within the method or as arguments, so they didn't need to be set as instance variables.


What do you feel is most improved in your refactored solution?

I increased the complexity a lot. The biggest improvement is the create_board method, which creates a new board based on the rules for a standard  bingo board (B:1-15, I:16-30, etc.). I also updated the BingoBoard#call method, so that when it selects a number to call, that number aligns with those same rules.  I did notice that my approach can result in the same number appearing multiple times in a single column, but adding a check to prevent that would be hard. I also think I could have used #push to create the create_board nested array, but given the challenge needs, my solution seems easier.

=end
