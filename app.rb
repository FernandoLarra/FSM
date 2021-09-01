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

  end
end