Rails.application.routes.draw do
  resources :outfit_favorites
  resources :outfit_clothes
  resources :clothes
  resources :outfits
  resources :weather
  resources :users

  post '/login', to: 'auth#create'

  get '/profile', to: 'users#show'

end
