require 'sinatra'
require_relative 'models/running.rb'
enable :sessions

get '/' do 
	erb :index
end 


post '/' do 
	game = Game.new(params[:miles])
	session[:game] = game
	@answer = game.subtraction
	erb :results
end

