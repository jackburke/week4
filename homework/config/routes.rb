MoviesApp::Application.routes.draw do

  resources :theaters


  get '/movies', controller: 'movies', action: 'index', as: 'movies'

  get '/movies/new', controller: 'movies', action: 'new', as: 'new_movie'

  get '/movies/:id', controller: 'movies', action: 'show', as: 'movie'

  get '/movies/:id/edit', controller: 'movies', action: 'edit', as: 'edit_movie'
  put '/movies/:id', controller: 'movies', action: 'update'

  post '/movies', controller: 'movies', action: 'create'

  delete '/movies/:id', controller: 'movies', action: 'destroy'

end
