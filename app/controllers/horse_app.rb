class HorseApp < Sinatra::Base
  get '/horses' do
    @horses = Horse.all
    erb :index
  end

  get '/jockey/:id'
    @jockeys = Jockey.all
    erb :jockey
  end
end
