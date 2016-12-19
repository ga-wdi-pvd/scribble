require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :form
end

post '/' do
  @first = params[:first_name]
  @last = params[:last_name]
  erb :show
end
