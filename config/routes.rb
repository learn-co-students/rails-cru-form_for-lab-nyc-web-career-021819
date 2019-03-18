Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artists
  resources :genres
  resources :songs

  # get '/artists', to: "artists#index"
  #
  # get '/artists/new', to: "artists#new"
  #
  # post '/artists', to: "artists#create"
  #
  # get '/artists/:id', to: "artists#show"
  #
  # get '/artists/:id/edit', to: "artists#edit"
  #
  # post '/artists/:id', to: "artists#update"

end
