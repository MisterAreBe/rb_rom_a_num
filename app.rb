require 'sinatra'
require_relative 'require_me.rb'

enable :sessions

get '/' do
  erb :index, :layout => :layout 
end