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


  root 'books#home'
  resources :price_updates, only: [:new, :create]

  namespace :api do
    resources :books do
      collection do
        get 'filter'
      end
    end
  end
end


