# Release 2 - Mini-Challenges

puts 'What\'s your first name?'
first_name = gets.chomp

puts 'Middle name?'
middle_name = gets.chomp

puts 'And your last name?'
last_name = gets.chomp

puts 'Hello, ' + first_name + ' ' + middle_name + ' ' + last_name + '.'

puts 'And what\'s your favorite number?'
favorite_number = gets.chomp
better_number = favorite_number.to_i+1

puts 'That\'s OK, but ' + better_number.to_s + ' would be better...'