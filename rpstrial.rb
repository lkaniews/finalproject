class User
	attr_accessor :total 
	def initialize 
	@total = 2133
	end

	def start
		puts "enter how far you ran today"
		@miles = gets.chomp
	end

	def miles
		@miles
	end

end

class Game
	def initialize (user)
		@user = user
	end
	def subtraction (miles)
		puts @user.total -= miles 
	end

end

user = User.new
game = Game.new(user)
game.subtraction(15)
