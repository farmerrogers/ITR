###############################################################################
#
# Introduction to Ruby on Rails
#
# HW 04
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# will help you to review the basics of Object-Oriented Programming that
# we learned in Lesson 04.
#
###############################################################################
#
# 1. Review your solution to Lab 03. Copy and Paste your solution to
#    this file.
#
# 2. Create a new method called `increment_guess_count` that takes
#    an Integer parameter and increments it by 1.
#
# 3. Create a new method called `guesses_left` that accepts an Integer
#    parameter. Inside of it, write math so that you can tell how many
#    guesses out of 3 that the Player has left. Use this new method
#    in your code to tell the user how many guesses they have left.
#
# 4. Make sure to remove your local variable `guesses_left` and use the
#    new method instead.
#
# 5. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
# Student's Solution
#
###############################################################################

current_guess_count = 0

def inc_guess_count(a)
	return a += 1
end

def guesses_left(current_guess_count)
	return 3 - current_guess_count
	puts "Current guess count = #{current_guess_count}"
end



#1   Hi, I'm Ben Rogers. This is a number guessing game.
puts "The Number Guessing Game of Furious Guess-Slinging"
first_name = "Ben"
last_name = "Rogers"
puts "This elusive number game was automated by " + first_name + " " + last_name + ", who then rewarded himself with a beer.\nThe first person to guess correctly on the first try gets a round on #{first_name}."
print 'What is your name?:'
player_name = gets
puts "Hi, #{player_name}Guess the Secret Number between 1 and 10" 
set_of_numbers = (1..10).to_a
secret_number = set_of_numbers.sample
messages = {:win => "What luck, you win! Congratulations, winner.", :lose => "Game over. #{secret_number} was the winning number.", :too_low => "That guess is too low.", :too_high => "That guess is too high."}
ask = "What do you think the number is?"



3.times do |count|
	guesses_left(1)
	puts ask										
  	player_guess = gets
	current_guess_count = inc_guess_count(current_guess_count)								
	if player_guess.to_i == secret_number 		 
		puts messages[:win]                    
		if count == 0
			puts "Oh jeeze, first guess. Does #{first_name} owe you a round?"
		end
		break												
	elsif player_guess.to_i <= secret_number	
  		puts messages[:too_low] 							
	else player_guess.to_i >= secret_number	
  		puts messages[:too_high] 																			
	end
	if count == 2
		puts messages[:lose]
		break
	end
end														




##1   Hi, I'm Ben Rogers. This is a number guessing game.
#puts "The Number Guessing Game of Furious Guess-Slinging"
#first_name = "Ben"
#last_name = "Rogers"
#puts "This elusive number game was automated by " + first_name + " " + last_name + ", who then rewarded himself with a beer.\nThe first person to guess correctly on the first try gets a round on #{first_name}."
#print 'What is your name?:'
#player_name = gets
#puts "Hi, #{player_name}Guess the Secret Number between 1 and 10"
#guesses_left = 3
#puts "You have #{guesses_left} chances to win." 
#set_of_numbers = (1..10).to_a
#secret_number = set_of_numbers.sample
#messages = {:win => "What luck, you win! Congratulations, winner.", :lose => "Sorry champ, you lose. #{secret_number} was the winning number.", :too_low => "That guess is too low.", :too_high => "That guess is too high."}
#ask = "What do you think the number is?"
#3.times do												
#	puts ask												
#  	player_guess = gets								
#	if player_guess.to_i == secret_number 		 
#		puts messages[:win]                    
#		if guesses_left == 3							
#			puts "Oh jeeze, first guess. Does #{first_name} owe you a round?"
#		end
#		break												
#	elsif player_guess.to_i <= secret_number	
#  		puts messages[:too_low]
#		guesses_left -= 1  							
#  		puts "You have #{guesses_left} guesses left."
#	else player_guess.to_i >= secret_number	
#  		puts messages[:too_high]
#		guesses_left -= 1  							
#  		puts "You have #{guesses_left} guesses left."
#	end													
#	if guesses_left == 0								
#		puts messages[:lose]
#	end
#end														