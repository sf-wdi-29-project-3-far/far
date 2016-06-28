Rails.application.routes.draw do
  resources :users

  root 'home#index'

  #sign in routes
  get '/sign_in', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy', as: 'delete'

  #friendship routes
  get '/users/:user_id/friendships', to: 'friendships#show', as: 'show_friendship'
  post '/users/:id', to: 'friendships#request', as: 'request'
  post '/users/:user_id/friendships', to: 'friendships#accept', as: 'accept'
  post '/users/:user_id/friendships', to: 'friendships#decline', as: 'decline'
  post '/users/:user_id/friendships', to: 'friendships#remove', as: 'remove'
  post '/users/:user_id/friendships', to: 'friendships#block', as: 'block'
  post '/users/:user_id/friendships', to: 'friendships#unblock', as: 'unblock'

end
