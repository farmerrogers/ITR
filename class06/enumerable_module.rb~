################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise 6.2
#
################################################################################
#
# 1. Create a new class Responses.
#
# 2. Implement the `responses` Hash that we've been using in prior
#    exercises by making it a class variable called `@@responses`.
#
# 3. Include the module Enumerable in the class Responses (as a mixin) and define the Enumerable "each" method
#    so that it iterates over all the possible responses in your responses class variable
#
# 4. Create a new Responses instance and use your new .each method to
#    iterate over the possible responses and print them to the screen.
#
################################################################################
#
# Student's Solution:
#
################################################################################




class Responses
	include Enumerable
	def initialize(*response)
		@@responses = Hash.new
		
		@@responses[:positive] =  [ "It is certain", "It is decidedly so",
                          "Without a doubt", "Yes - definitely",
                          "You may rely on it", "As I see it, yes",
                          "Most likely", "Outlook good", "Yes",
                          "Signs point to yes" ]

		@@responses[:neutral] =  [ "Reply hazy, try again", "Ask again later",
                         "Better not tell you now", "Cannot predict now",
                         "Concentrate and ask again" ]

		@@responses[:negative] = [ "Don't count on it", "My reply is no",
                         "My sources say no", "Outlook not so good",
                         "Very doubtful" ]		
	end
	def each
		@@responses.each do |keys, value|
			puts value
		end
	end
	def random
			puts @@responses[@@responses.keys.sample].sample #admittedly, I had some help here, but it helped me out
	end
end
test = Responses.new

test.random



#
#class Responses
#	include Enumerable
#	def initialize(*response)
#		@@responses = Hash.new
#		
#		@@responses[:positive] =  [ "It is certain", "It is decidedly so",
#                          "Without a doubt", "Yes - definitely",
#                          "You may rely on it", "As I see it, yes",
#                          "Most likely", "Outlook good", "Yes",
#                          "Signs point to yes" ]
#
#		@@responses[:neutral] =  [ "Reply hazy, try again", "Ask again later",
#                         "Better not tell you now", "Cannot predict now",
#                         "Concentrate and ask again" ]
#
#		@@responses[:negative] = [ "Don't count on it", "My reply is no",
#                         "My sources say no", "Outlook not so good",
#                         "Very doubtful" ]		
#	end
#	def each
#		@@responses.each do |keys, value|
#			puts value
#		end
#	end
#	def random
#			puts @@responses[@@responses.keys.sample].sample #admittedly, I had some help here, but it helped me out
#	end
#end
#test = Responses.new
#
#test.random