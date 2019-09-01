class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # code actions here!


  get '/' do
    @recipes = Recipe.all
    erb :index
  end

  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end

  get 'recipes/:id' do
    @chosenRecipe = Article.find_by_id(params["id"])
    erb :recipe
  end 

  patch '/recipes/:id/edit' do
    erb :edit
  end 

  post 'recipes/new' do
    erb :new
  end

  # Then there is update and delete.  



end
