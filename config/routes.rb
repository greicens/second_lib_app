Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'

  get '/users' => 'users#index'
  get '/users/new' => 'users#new', as: 'new_user'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show', as: 'user'
end
