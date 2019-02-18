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


get '/size1' do
    session[:board] = Board.new(params[:boardsize].to_i, "homeboard")
    session[:enemyboard] = Board.new(params[:boardsize].to_i, "enemyboard")
    erb :size1, locals: {board: session[:board], enemyboard: session[:enemyboard]}
end

get '/size2' do
    erb :board24, locals: {ships: session[:ships], reply_direction: session[:reply_direction], reply_row: session[:reply_row], reply_column: session[:reply_column], rows: session[:rows], status_arr: session[:status_arr]}
end

get '/size3' do
    erb :board36, locals: {ships: session[:ships], reply_direction: session[:reply_direction], reply_row: session[:reply_row], reply_column: session[:reply_column], rows: session[:rows], status_arr: session[:status_arr]}
end

post '/size1' do
    redirect '/size1'
    session[:row] = params[:row]
    session[:column] = params[:column]
    session[:position] = params[:position]
end

post '/bds3' do
    redirect '/size1'
    session[:ships] = params[:ships]
    session[:reply_direction] = params[:reply_direction]
    session[:reply_row] = params[:reply_row]
    session[:reply_column] = params[:reply_column]
    session[:rows] = params[:rows]
    session[:staus_arr] = params[:status_arr]
end

post '/size2' do
    redirect '/size2'
    session[:ships] = params[:ships]
    session[:reply_direction] = params[:reply_direction]
    session[:reply_row] = params[:reply_row]
    session[:reply_column] = params[:reply_column]
    session[:rows] = params[:rows]
    session[:staus_arr] = params[:status_arr]
end

post '/size3' do
    redirect '/size3'
    session[:ships] = params[:ships]
    session[:reply_direction] = params[:reply_direction]
    session[:reply_row] = params[:reply_row]
    session[:reply_column] = params[:reply_column]
    session[:rows] = params[:rows]
    session[:staus_arr] = params[:status_arr]
end






