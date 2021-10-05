require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Application
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    "Hello battle! It's battle time"
  end
end