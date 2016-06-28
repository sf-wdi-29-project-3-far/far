Rails.application.routes.draw do
  resources :users
  root 'home#index'

  #sign in routes
  get '/sign_in', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy', as: 'delete'

  post '/users/:id/art', to: 'users#arts', as: 'arts'

end
