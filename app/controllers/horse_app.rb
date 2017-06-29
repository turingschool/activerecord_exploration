class HorseApp < Sinatra::Base

  get '/horses' do
    @horses = Horse.all
    erb :"horses/index"
  end

  get '/jockeys/:id' do
    @jockey = Jockey.find(:id)
    erb :"jockeys/show"
  end

end
