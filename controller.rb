require 'sinatra'
require_relative 'models/running.rb'
enable :sessions

get '/' do 
	if session[:game] 
		game = session[:game]
		@answer = game.total
	else
		game = Game.new  
		@answer = game.total
	end
	erb :index
end 


post '/' do  
	game = session[:game] 
	game.subtraction(params[:miles])
	@answer = game.total
	erb :results
end

