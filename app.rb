require 'sinatra/base'
require_relative "lib/player"

class BattleApp < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect to('/play')
  end

  get '/play' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    erb :play
  end

  get '/attack' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    $game.attack
    erb :attack
  end

  run! if app_file == $0
end
