require "sinatra"
require 'haml'
require "sinatra/reloader"
require "sinatra/respond_with"

module Farmacia
  class App < Sinatra::Base

#    get '/' do
#      haml :index
#    end

    get '/' do
      haml :login
    end

    get '/productos' do
        haml :productos
    end 

    get '/tururu' do
        haml :tururu
    end

    get '/ventas' do
      haml :ventas
  end
  get '/orden_venta' do
    haml :orden_venta
  end
  get '/caja' do
    haml :caja
  end
  end
end