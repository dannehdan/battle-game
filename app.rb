require 'sinatra/base'
# require 'sinatra/reloader'

class Battle < Sinatra::Application
  # configure :development do
  #   register Sinatra::Reloader
  # end

  get '/' do
    "Hello world! It's me"
  end

  run! if app_file == $0
end