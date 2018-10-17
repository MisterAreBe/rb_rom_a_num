require 'sinatra'
require_relative 'require_me.rb'

enable :sessions

get '/' do
  roman_numeral = session[:roman_numeral] || ''
  erb :index, :layout => :layout, locals: {roman_numeral: roman_numeral}
end

post '/romanize' do
  temp = params[:to_roman].to_i
  session[:roman_numeral] = temp.romanize()
  redirect '/'
end