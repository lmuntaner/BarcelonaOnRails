Rails.application.routes.draw do
  root 'coding_resources#index'
  get '/admin' => 'sessions#new'

  resources :coding_resources, only: [:show, :new, :create]
  resources :sessions, only: [:new, :create, :destroy]
end
