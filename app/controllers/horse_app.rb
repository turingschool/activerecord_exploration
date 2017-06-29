class HorseApp < Sinatra::Base
  get '/horses' do
    @horses = Horse.all
    erb :"horses/index"
  end

  get '/jockey/:id' do
    @jockeys = Jockey.all
    erb :"jockeys/jockey"
  end
end
