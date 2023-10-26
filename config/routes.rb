Rails.application.routes.draw do
  require 'sidekiq/web'
mount Sidekiq::Web => '/sidekiq'

  devise_for :users

  resources :publishers do
    resources :authors
  end

  resources :authors do
    resources :books
  end

  resources :books
  resources :authors

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'books#index'
  resources :price_updates, only: [:new, :create]

  namespace :api do
    resources :books
  end
end
