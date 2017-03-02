require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end
  #
  # post '/names' do
  #   @player_1 = params[:PLAYER_1]
  #   @player_2 = params[:PLAYER_2]
  #   erb :play
  # end

  post '/names' do
    session[:PLAYER_1] = params[:PLAYER_1]
    session[:PLAYER_2] = params[:PLAYER_2]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:PLAYER_1]
    @player_2 = session[:PLAYER_2]
    erb :play
  end

  run! if app_file == $0

end
