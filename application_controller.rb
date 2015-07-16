require 'bundler'
Bundler.require

require './models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/results' do
    erb :results 
  end 
  
  get '/link' do
    erb :link
  end 
  
  get '/apples' do 
    erb :aples 
  end 
  
  get '/food' do
    @foods = ["macaroni", "pizza", "brownies"]
    erb :food
  end 
  
  get '/doge' do
    @doge1 = Doge.new("Sparkles")
    erb :doge
    
    
  end 
end