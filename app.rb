require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Application
  # configure :development do
  #   register Sinatra::Reloader
  # end
  enable :sessions
  
  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect to('/play')
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent_of(@game.current_turn))
    @game.switch_turns
    erb(:attack)
  end
end