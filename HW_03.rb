###############################################################################
#
# Introduction to Ruby on Rails
#
# HW_03.rb
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This HW
# is to help you better understand Arrays, Hashes and Loops that we
# learned in Lesson 03.
#
###############################################################################
#
# 1. Review your solution to HW 02. Copy and Paste your solution to
#    this file.
#
# 2. Create a new Array variable called `set_of_numbers`, this will be
#    a range between 1 - 10 that our Player will guess from. Each value
#    in the Array should be an integer.
#
# 3. Change the variable `secret_number` so that instead of a hard-coded
#    Integer, it randomly chooses one of the options from `set_of_numbers`
#    that our Player will try to guess.
#
#      Hint: Look up Array#sample in the Ruby documentation.
#
# 4. Create a new Hash variable called `messages`. In this Hash will be
#    four Keys and their Values:
#
#    1. :win - A String telling the Player that they have won.
#
#    2. :lose - A String telling the Player that they have lost and what
#       the correct number was.
#
#    3. :too_low - A String telling the Player that their guess was too
#       low.
#
#    4. :too_high - A String telling the Player that their guess was too
#       high.
#
# 5. Change the behavior of your program so that instead of hard coding,
#    use the principles of DRY. This means using some kind of Loop to
#    iterate over your code either until the Player has guessed the
#    correct number, or they have tried to guess 3 times.
#
# 6. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
# Student's Solution
#
###############################################################################


#An uninterrupted copy of the script is commented out starting at line 136.



#1   Hi. I'm Ben Rogers. This is a number guessing game.
puts "The Number Guessing Game of Furious Guess-Slinging"
first_name = "Ben"
last_name = "Rogers"
puts "This elusive number game was automated by " + first_name + " " + last_name + ", who then rewarded himself with a beer.\nThe first person to guess correctly on the first try gets a round on #{first_name}."
print 'What is your name?:'
player_name = gets
puts "Hi, #{player_name}Guess the Secret Number between 1 and 10."
guesses_left = 3
puts "You have #{guesses_left} chances to win."


#This creates an array of the numbers 1 through 10, then randomly selects a number. 
set_of_numbers = (1..10).to_a
secret_number = set_of_numbers.sample


#This hash is comprised of responses to user guesses.
messages = {:win => "What luck, you win! Congratulations, winner.", :lose => "Sorry champ, you lose. #{secret_number} was the winning number.", :too_low => "That guess is too low.", :too_high => "That guess is too high."}

#Here we declare the ask variable
ask = "What do you think the number is?"

#This starts the loop. 
3.times do												
	puts ask												

#Gets stores the user input, or guesses
  	player_guess = gets								

#This considers if the guess is a winning guess
	if player_guess.to_i == secret_number 		

#This chooses the appropriate message from the above hash 
		puts messages[:win]                    

#This delivers a message to anyone who wins on the first guess.
		if guesses_left == 3							
			puts "Oh jeeze, first guess. Does #{first_name} owe you a round?"
		end

#Here, the script is exited after a congratulatory message
		break												
		
#This considers if the guess is a low guess
	elsif player_guess.to_i <= secret_number	
  		puts messages[:too_low]
  
#Here, the number of guesses the player has left is decreased.
		guesses_left -= 1  							
  		puts "You have #{guesses_left} guesses left."
  		
#This considers if the guess is too high.
	else player_guess.to_i >= secret_number	
  		puts messages[:too_high]
  		
#Here, the number of guesses the player has left is decreased.
		guesses_left -= 1  							
  		puts "You have #{guesses_left} guesses left."
  		
#This closes the conditional, and passes along for one final condition.
	end													
	
#This makes sure no one gets more than 3 guesses.
	if guesses_left == 0								
		puts messages[:lose]
	end
		
#This ends the whole loop
end														


#Following is the entire script without comment interruptions
#
#
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