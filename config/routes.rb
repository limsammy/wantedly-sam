Rails.application.routes.draw do
  root to: 'dashboard#index'

  get '/dashboard', to: 'dashboard#index'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  put '/increment/:id', to: 'user_skills#increment'

  resources :users, only: [:new, :create, :show]
end
