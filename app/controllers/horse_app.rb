class HorseApp < Sinatra::Base
  set :method_override, true

  get '/horses' do
    @horses = Horse.all
    erb :"horses/index"
  end

  get '/horses/:id' do
    @horse = Horse.find_by_id(params[:id])
    erb :"horses/horse"
  end

  get '/horses/new' do
    erb :"horses/new"
  end

  get '/horses/:id/edit' do
    @horse = Horse.find_by_id(params[:id])
    erb :"horses/edit"
  end

  put '/horses/:id' do
    Horse.update(params[:id].to_i, params[:horse])
    redirect "/horses"
  end

end
