
#class Laptop
#	def get_brand
#		return "Lenovo"
#	end
#end
#
#my_laptop = Laptop.new
#puts my_laptop.get_brand


			#Initialize and Get method

#class Laptop
#	@brand
#	def initialize(brand)
#		@brand = brand
#	end
#	def get_brand
#		return @brand
#	end
#end
#
#laptop = Laptop.new("Asus")
#puts laptop.get_brand

class Laptop
	attr_accessor :brand, :model
	def initialize(brand)
		@brand = brand
	end
end

laptop = Laptop.new("Lenovo")
puts laptop.brand