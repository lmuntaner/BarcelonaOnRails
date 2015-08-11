Rails.application.routes.draw do
  root 'coding_resources#index'
  get '/admin' => 'sessions#new'

  resources :coding_resources, only: [:show]
  resources :sessions, only: [:new, :create, :destroy]
end
