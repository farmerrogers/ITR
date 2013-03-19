################################################################################
#
# Introduction to Ruby on Rails
#
# Code Along Built In Classes
#
################################################################################
#We are going to use the built in class 'File' to create a .txt file and add some text to it. 

# 1. Ask the user for a file name. Open or create a file by that name, 
# by adding file extension".txt" to the users input.
# Ask the user to write a sentence. Append that sentence to the file, preceded
# by the current date and time. Use newline character ("\n") as needed. Be sure to close the file. 
# Check your work on the file system.

puts "\n---------------------------------"

puts "File name:"
file_name = $stdin.gets.chomp   #look up each of these methods and understand them. stdin, gets, and chomp
puts "Your name:"
author_name = $stdin.gets.chomp
puts "Sentence to append:"
sentence = $stdin.gets.chomp
file = File.new(file_name + ".txt", "a")		#the "a" means to append. "w" = write, and "r" = read
time = Time.new
file.write(time.localtime.to_s + " ")
file.write(author_name + "\n")
file.write(sentence + "\n")
file.close


# 2. Use the File class to open the file created above (using the same input from above), to read and 
# display its contents to the terminal window. Read documentation on the .gets method, and write the 
# necessary loop code.

puts "\n------------------------------------"

file = File.new(file_name + ".txt", "r")
while(line = file.gets)
	puts line
end
file.close