require_relative 'config/environment'

class App < Sinatra::Base
    get '/' do 
        erb :index 
    end 

    configure do
        enable :sessions 
    end 

    post '/checkout' do 
        session["item"] = params[:item]
        @session = session
    end 
end