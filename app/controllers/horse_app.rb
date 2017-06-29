class HorseApp < Sinatra::Base

  get '/horses' do
    @horses = Horse.all
    erb :"horses/index"
  end

  get '/jockeys' do
    @jockeys = Jockey.all
    erb :"jockeys/index"
  end

  get '/horses/new' do
      erb :"horses/new"
  end

  post '/horses' do
    horse = Horse.new(params[:horse])
    horse.save
    redirect '/horses'
  end

  get '/horses/:id/edit' do
    @horse = Horse.find(params[:id])
    erb :"horses/edit"
  end

  put '/horses/:id' do |id|
    Horse.update(id.to_i, params[:horse])
    redirect "/horses/#{id}"
  end

  get '/horses/:id' do
    @horse = Horse.find(params[:id])
    erb :"horses/show"
  end

  get '/jockeys/:id' do
    @jockey = Jockey.find(params[:id])
    erb :"jockeys/show"
  end

  delete '/horses/:id' do |id|
    Horse.destroy(id.to_i)
    redirect '/horses'
  end

end
