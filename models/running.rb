class Game
	attr_accessor :total, :miles
	def initialize
		@total = 2133
	end
	def subtraction(miles)
		@total -= miles.to_i
	end
end



