Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'users#index'

  # get '/users' => 'users#index'
  get '/users/new' => 'users#new', as: 'new_user'
  post '/users' => 'users#create'
  get '/users/:id' => 'users#show', as: 'user'
  get '/login' => 'sessions#new', as: 'login'
  get '/logout' => 'sessions#destroy'
  post '/sessions' => 'sessions#create', as: 'sessions'
  get '/libraries' => 'libraries#index'
  get '/libraries/new' => 'libraries#new', as: 'new_library'
  post '/libraries' => 'libraries#create'

end
