Rails.application.routes.draw do
  resources :outfit_favorites
  resources :outfit_clothes
  resources :clothes
  resources :outfits
  resources :weather
  resources :users, :except => [:show]

  # user
  post '/login', to: 'auth#create'

  get '/profile', to: 'users#show'

  # weather
  get "/test", to: "weather#test"
  
  post "/search", to: "weather#search"
  
  post "/location", to: "weather#location"

  post "/geolocation", to: "weather#geolocation"

end
