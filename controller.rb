require 'sinatra'


get '/' do 
	erb :index
end 

get '/' do 
	input = Input.new(params[:num])
end