################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise 4.1
#
################################################################################

# 1. A popular built-in class is the Time class:
#    http://www.ruby-doc.org/docs/ProgrammingRuby/html/ref_c_time.html
#
#    In previous lessons, we ask out user to input the date.
#    We can make Ruby do all the hard work for us instead!
#
#    Print to the screen `Time.now` and see what prints.

puts Time.now
# this prints to screen YYYY/MM/DD hh:mm:ss -0700
# in the above line, -0700 denotes pacific time zone 

# 2. Run it again! What changed?
#  the time!


# 3. Although neat, that output looks pretty ugly... What if you run
#    Time.now.day or Time.now.month?

puts Time.now.day			# Prints the number-day of the month
puts Time.now.month		# Prints the number-month (1-12)

# 4. Take a look at `strftime`:
#    http://www.ruby-doc.org/docs/ProgrammingRuby/html/ref_c_time.html#Time.strftime
#
#    Construct a String using `strftime` so that the date prints out like:
#    Tuesday, September 19, 1985 at 09:15AM

puts Time.now.strftime("%A, %B %d, %Y at %H:%M%p")