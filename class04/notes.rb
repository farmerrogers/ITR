#method notes

def add_several_numbers(*a)
  result = 0
  a.each do |parameter|
    result = result + parameter
  end
 result
end

puts add_several_numbers(3,6,9)

