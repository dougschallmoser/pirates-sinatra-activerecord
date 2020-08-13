require './config/environment'

class Application < Sinatra::Base

    set :views, "app/views"

    get '/pirates' do 
        @pirates = Pirate.all

        erb :'/pirates/index'
    end
    
    get '/pirates/new' do
        erb :'/pirates/new'
    end 

    get '/pirates/:id' do 
        @pirate = Pirate.find(params[:id])
        
        erb :'/pirates/show'
    end 

    post '/pirates' do 
        pirate = Pirate.new(name: params[:pirate][:name], weight: params[:pirate][:weight], height: params[:pirate][:weight])
        
        # params[:pirate][:ships].each do |ship_detail|
    end

end 