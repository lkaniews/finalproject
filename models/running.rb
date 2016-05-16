class User
	attr_accessor :total 
	def initialize 
		@total = 2133
			@miles = miles
	end
end

class Game
	def initialize (user)
		@user = user
	end
	def subtraction (miles)
		@user.total -= miles 
	end
end



