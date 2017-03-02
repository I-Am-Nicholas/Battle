require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end
#  run! if app_file == $0

  post '/names' do
    @player_1 = params[:PLAYER_1]
    @player_2 = params[:PLAYER_2]
    erb :play
  end

  run! if app_file == $0

end
