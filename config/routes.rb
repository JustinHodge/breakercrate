Rails.application.routes.draw do
  resources :outlets
  resources :rooms
  get 'home', to: 'home#index'
  get 'map', to: 'map#index'
  resources :breakers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'home#index'
end
