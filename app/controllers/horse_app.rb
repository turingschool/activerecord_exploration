class HorseApp < Sinatra::Base
  get '/' do
    erb :"home/index"
  end

  get '/horses' do
    @horses = Horse.all
    erb :"horses/index"
  end

  get '/horses/:id' do
    @horse = Horse.find(params[:id])
    erb :"horses/show"
  end

  get '/jockeys' do
    @jockeys = Jockey.all
    erb :"jockeys/index"
  end

  get '/jockeys/:id' do
    @jockey = Jockey.find(params[:id])
    erb :"jockeys/show"
  end
end
