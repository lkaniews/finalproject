require 'sinatra'
require_relative 'models/running.rb'
enable :sessions

get '/' do 
	if session[:game] 
		if session[:game].total <= 0
			session.clear
			game = Game.new  
			session[:game] = game
		end
		game = session[:game]
		@answer = game.total
	else
		game = Game.new  
		@answer = game.total
		session[:game] = game
	end
	erb :index
end 
  

post '/' do  
	game = session[:game] 
	game.subtraction(params[:miles])
	@answer = game.total
	erb :results
end

