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

get '/deroman' do
  arabic_number = session[:arabic_number] || ''
  erb :deroman, :layout => :layout, locals: {arabic_number: arabic_number}
end

post '/deromanize' do
  temp = params[:to_arabic]
  session[:arabic_number] = temp.deroman()
  redirect '/deroman'
end