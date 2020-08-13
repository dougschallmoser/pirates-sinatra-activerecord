require './config/environment'

class Application < Sinatra::Base

    set :views, "app/views"

    get '/' do 
        erb :'index'
    end 

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
        pirate.save
        
        params[:pirate][:ships].each do |ship_detail|
            ship = Ship.new(ship_detail)
            ship.pirate = pirate
            ship.save
        end
        
        redirect "/pirates/#{pirate.id}"
    end

end 