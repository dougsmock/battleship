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

post '/rules' do
    redirect '/choose'
end

get '/choose' do
    erb :board12
end

get '/choose' do
    erb :board24
end

get '/choose' do
    erb :board36
end






# get '/checkout' do
#     # session[:crust]
#     erb :checkout, locals:{type: session[:type], size: session[:size], crust: session[:crust], toppings1: session[:toppings1], subtotal: session[:subtotal], sales_tax: session[:sales_tax], grand_total: session[:grand_total]}
#   end
  
#   post '/checkout' do
#     puts "Hello World"
#     puts "#{params} is params in post '/lastpage' do"
#     session[:name] = params[:name]
#     session[:address] = params[:address]
#     session[:phone] = params[:phone]
#     session[:grand_total] = params[:grand_tota"l]
#     session[:toppings1] = params[:toppings1]
#     session[:crust] = params[:crust]
#     session[:type] = params[:type]
#     session[:size] = params[:size]
#     p session
#     redirect '/lastpage'
#   end

