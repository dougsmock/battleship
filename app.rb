require 'sinatra'

# require_relative 'game3.rb'
# require_relative 'player2.rb'
# require_relative 'board2.rb'
# require_relative 'ship2.rb'
# require_relative 'cell2.rb'

enable :sessions

get '/' do
    erb :rules
end

post '/size1' do
    redirect '/size1'
end

post '/size2' do
    redirect '/size2'
end

post '/size3' do
    redirect '/size3'
end

get '/size1' do
    erb :board12
end

get '/size2' do
    erb :board24
end

get '/size3' do
    erb :board36
end







