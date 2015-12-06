Rottenpotatoes::Application.routes.draw do
  resources :movies do
    member do
      get 'search_movie_by_director'
    end 
  end 
  # map '/' to be a redirect to '/movies'
  root 'movies#main'
end
