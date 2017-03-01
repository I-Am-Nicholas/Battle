require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end
#  run! if app_file == $0

  post '/names' do
    erb :play
    puts params
    @player_1 = params[:player_1]
    @player_2 = params[:player_2]
  end

  run! if app_file == $0

end
