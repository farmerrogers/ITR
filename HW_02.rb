###############################################################################
#
# Introduction to Ruby on Rails
#
# HW 02
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to test your knowledge of Variables and Conditionals which we
# learned in Lesson 02.
#
###############################################################################
#
# 1. Review your solution to Lab 01. Copy and Paste your solution to
#    this file.
#
# 2. Print the text "What is your name?:" to the screen for your
#    Player.
#
# 3. Create a new String variable called `player_name` that retrives
#    input from the Player from the command line via the `gets` method.
#
# 4. Confirm the Player's entry by printing to the screen, 
#
# 5. Create a new Integer variables called `guesses_left`, this will count
#    down how many more times the Player can guess. It's initial value should
#    be 3.
#
# 6. Using String Interpolation, concatenate the variable `guesses_left`
#    into a String that tells the Player how many guesses they have left
#    and print it to the screen.
#
# 7. Create a new Integer variable called `secret_number` and set the value to
#    a number of your choosing between 1 and 10. This is the number that
#    our Player will try to guess.
#
# 8. Ask the Player to make their first guess by printing the question
#    to the screen and taking input into the variable `players_guess`.
#
#    Hint: Remember to cast input from the Player into the appropriate
#          data type.
#
# 9. Use a Conditional to find out if the Player has guessed the
#     correct number.
#
#     1. If they guessed correctly, tell them they won and exit the
#        script.
#
#     2. If they guessed a number too low, tell them that they need to
#        guess higher on their next guess.
#
#     3. If they guessed a number too high, tell them that they need to
#        guess lower on their next guess.
#
# 10. If they did not win, decrement the variable `guesses_left` by 1 and
#     print to the screen how many guesses the Player has left.
#
# 11. Repeat the above process for a total of 3 times asking the Player
#     to make a guess and checking that guess to see if the Player has won.
#
# 12. If they do not make the correct guess after 3 tries, print that
#     the Player loses and what the `secret_number` was.
#
# 13. Make sure to add helpful comments to your code to document what
#     each section does.
#
###############################################################################
#
# Student's Solution
#
###############################################################################


#1   Howdy 'yall. I'm Ben Rogers, and I never wasn't. This is a number guessing game.
puts "The Number Guessing Game of Furious Guess-Slinging!"
first_name = "Ben"
last_name = "Rogers"
puts "This elusive number game was automated by " + first_name + " " + last_name + ", who then rewarded himself with a beer."

#2   Ask the player to introduce themselves.
print 'What is your name?:'

#3  This stores the players input
player_name = gets

#4  This greets and instructs the player
print "Hi, #{player_name}Guess the Secret Number between 1 and 10"

#5  This declares in Ruby how many guesses the player starts off with.
guesses_left = 3

#6  This takes the guesses_left declaration, and displays it in a friendly manner for the player.
puts "\nYou have #{guesses_left} chances to win!"

#7  This declares the secret number, the one everyone's guessing about!
secret_number = 4

# 8  This asks the player for their first guess, then pulls the response into ruby for closer inspection 
print "What do you think the number is? "
player_guess = gets

#9  Inspection of guess! This is the real brains of this game, it decides what to do with the player_guess variable.
#   player_guess is a variable, and we need to turn it into an integer. The to_i method does that.
#   abort exits the Ruby script, on the condition that the player wins.
 
if player_guess.to_i == secret_number             
  puts "Damn. You win.\nYou're really good at guessing numbers, we'll call your mom to let her know."
  abort("If you're the first one to guess on the first try, I owe you one drink.")
elsif player_guess.to_i <= secret_number
 puts "Too low, try again."
else
  puts "Too high, try again."  
end

#10   Advances the game after one incorrect guess

if player_guess.to_i != secret_number
  puts "You have #{guesses_left - 1} guesses left!"
end

#11   Here, steps 8-10 are repeated until the player wins or runs out of guesses.

print "What do you think the number is? "
player_guess = gets
if player_guess.to_i == secret_number             
 abort("Damn. You win.\nYou're really good at guessing numbers, we'll call your mom to let her know.")
elsif player_guess.to_i <= secret_number
 puts "Too low, try again."
else
  puts "Too high, try again."  
end
if player_guess.to_i != secret_number
  puts "You have #{guesses_left - 2} guesses left!"
end
print "What do you think the number is? "
player_guess = gets
if player_guess.to_i == secret_number             
 abort("Damn. You win.\nYou're really good at guessing numbers, we'll call your mom to let her know.")
elsif player_guess.to_i <= secret_number
 puts "Too low."
else
  puts "Too high."  
end

if player_guess.to_i != secret_number
  puts "You have #{guesses_left - 3} guesses left!"
  abort("Sorry champ, you lose. #{secret_number} was the winning number.")                              #12
end



#13  I really feel like steps 8-11 could/should be looped instead of repeated.
#    I'll try to figure it out and let you know how I do.
