require 'bundler'
Bundler.require

require './models/model.rb'

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
    
    post '/results' do
   
      
      sentence_hash =  { "Swimming"=>"For swimming, bring: bathing suit, sunglasses, flipflops.", 
        "Work"=>"For work, bring: work phone, laptop, laptop charger, business cards.", 
        "Beach"=>"For the beach, bring: sunblock, sunglasses, bathing suit, towel, hat, sandals.",
        "Hiking"=>"For hiking, bring: sneakers or hiking boots, socks (not cotton), water bottle, hat, insect repellant, first aid kit, t-shirt.", 
        "Elegant Dinner or Event"=>"For an elegant dinner or event, bring: dress(long)/skirt or suit, high heels or dress shoes, jewelery, cufflinks.", 
        "Fitness"=>"For fitness, bring: water bottle, leggings or shorts, t-shirt or other gear, sports bra, sweatshirt, sneakers.", 
        "Winter Sports"=>"For winter sports, bring: sweater, ski pants, helmet, wool socks, gloves, scarf, sunscreen, ski jacket, moisturizer." }
      
        packer1 = Packer.new(params[:traveldestination], params[:dates], params[:dates] * 1, params[:activities], sentence_hash)
      
      @part1 = packer1.sentences
      @pack_array = packer1.add_activity
      erb :results
            
  end 
end