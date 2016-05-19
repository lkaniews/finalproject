class Game
	attr_accessor :total, :miles
	def initialize (miles)
		@total = 2133
		@miles = miles.to_i
	end
	def subtraction 
		@answer = @total -= @miles
	end
end



