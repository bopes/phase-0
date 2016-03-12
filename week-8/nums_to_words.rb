# Numbers to English Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

def converter_ones(number)
  case number
    when 1
      puts "one"
    when 2
      puts "two"
    when 3
      puts "three"
    when 4
      puts "four"
    when 5
      puts "five"
    when 6
      puts "six"
    when 7
      puts "seven"
    when 8
      puts "eight"
    when 9
      puts "nine"
    when 10
      puts "ten"
    when 11
      puts "eleven"
    when 12
      puts "twelve"
    when 13
      puts "thirteen"
    when 14
      puts "fourteen"
    when 15
      puts "fifteen"
    when 16
      puts "sixteen"
    when 17
      puts "seventeen"
    when 18
      puts "eighteen"
    when 19
      puts "nineteen"
  end
  puts
end

def converter_tens(number)
  tens = number/10
  if number >= 20
    case tens
      when 2
        print "twenty "
      when 3
        print "thirty "
      when 4
        print "forty "
      when 5
        print "fifty "
      when 6
        print "sixty "
      when 7
        print "seventy "
      when 8
        print "eighty "
      when 9
        print "ninety "
      when 10
        puts "one hundred"
    end
    converter_ones(number%10)
  else
    converter_ones(number)
  end
end

converter_tens(11)
converter_tens(19)
converter_tens(25)
converter_ones(3)

converter_tens(33)

# Refactored Solution






# Reflection