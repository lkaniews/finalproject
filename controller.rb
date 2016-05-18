require 'sinatra'
require_relative 'models/running.rb'

get '/' do 
	erb :index
end 

post '/' do 
	user = User.new (params[:miles])
	game = Game.new (user)
	@answer = game.subtraction 
	erb :results
end

