class HorseApp < Sinatra::Base
  get '/horses' do
    @horses = Horse.all
    erb :"horses/index"
  end

  get '/jockey/:id' do
    @jockey = Jockey.find_by(params[:id])
    erb :"jockeys/jockey"
  end
end
