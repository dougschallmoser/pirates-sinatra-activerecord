require './config/environment'

class Application < Sinatra::Base

    set :views, "app/views"

    get '/pirates' do 
        @pirates = Pirate.all

        erb :'/pirates/index'
    end

end 