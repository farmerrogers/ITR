################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise Hashes
#
#
################################################################################
 
# 1. create a hash named states comprised of three state names, including New York, and their abbreviations

states = {"CA" => "California", "NY" => "New York", "TX" => "Texas"}
puts states

# 2. create second hash named request using url and ip as key names

request = {"url" => "http://www.google.com", "ip" => "127.0.0.1"}

# 3. display the url in the request hash

puts request["url"]

# 4. display the abbreviation for New York

puts states["NY"]

puts states.has_key?("CA")

# 5. display whether the states hash contains the abbreviation NY

puts states.has_value?("New York")

puts states["IL"]

states["IL"] = "Illinois"

puts states["IL"]