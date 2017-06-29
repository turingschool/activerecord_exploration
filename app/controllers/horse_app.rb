class HorseApp < Sinatra::Base

  get '/horses' do
    @horses = Horse.all
    erb :"horses/index"
  end

  get '/horses/:id' do

  end

  get '/jockeys/:id' do
    @jockey = Jockey.find(params[:id])
    erb :"jockeys/jockey"
  end

end
