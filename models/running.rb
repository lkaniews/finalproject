class User
	attr_accessor :total, :miles
	def initialize (miles)
		@total = 2133
		@miles = miles.to_i
	end
end

class Game
	attr_accessor :total, :miles
	def initialize (user)
		@user = user
	end
	def subtraction 
		@answer = @user.total -= @user.miles
	end
end



