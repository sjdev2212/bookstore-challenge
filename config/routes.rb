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

  resources :authors do
    member do
      get 'about_modal' # Add this line to define the new action
    end
  end

  resources :books do
    member do
      get 'review_modal', to: 'books#review_modal'
    end
  end
  resources :books
  resources :authors



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  root 'books#home'
  resources :price_updates, only: [:new, :create]

  namespace :api do
    resources :books
  end
end
