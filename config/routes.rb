Rails.application.routes.draw do
  resources :users

  root 'home#index'

  #sign in routes
  get '/sign_in', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy', as: 'delete'


  #friendship routes
  get  '/users/:id', to: 'friendships#show', as: 'show_friendship'
  post '/users/:id/request', to: 'friendships#add', as: 'request'
  post '/users/:id/accept', to: 'friendships#accept', as: 'accept'
  post '/users/:id/decline', to: 'friendships#decline', as: 'decline'
  post '/users/:id/remove', to: 'friendships#remove', as: 'remove'
  post '/users/:id/block', to: 'friendships#block', as: 'block'
  post '/users/:id/unblock', to: 'friendships#unblock', as: 'unblock'

  #category routes
  post '/users/:id/art', to: 'users#arts', as: 'arts'

  #match form routes
  get '/users/:id/match/new', to: "users#new_match", as: 'new_match'
  post '/users/:id/match', to: "users#find_match", as: 'matches'
end
