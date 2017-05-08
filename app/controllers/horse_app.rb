class HorseApp < Sinatra::Base
  get '/' do
    erb :"home/index"
  end

  get '/horses' do
    @horses = Horse.all
    erb :"horses/index"
  end

  get '/horses/new' do
    @horse   = Horse.new
    @jockeys = Jockey.all
    @breeds  = Breed.all
    erb :"horses/new"
  end

  post '/horses' do
    @horse = Horse.create(params[:horse])
    redirect "/horses/#{@horse.id}"
  end

  get '/horses/:id/edit' do
    @horse = Horse.find(params[:id])
    @jockeys = Jockey.all
    @breeds  = Breed.all
    erb :"horses/edit"
  end

  put '/horses/:id' do
    @horse = Horse.update(params[:id], params[:horse])
    redirect "/horses/#{@horse.id}"
  end

  get '/horses/:id' do
    @horse = Horse.find(params[:id])
    erb :"horses/show"
  end

  delete '/horses/:id' do
    @horse = Horse.destroy(params[:id])
    redirect "/horses"
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
