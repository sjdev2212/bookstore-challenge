Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  devise_for :users

  resources :books do
    resources :favorites, only: [:create, :destroy]
    member do
      get 'review_modal', to: 'books#review_modal'

    end
  end

  resources :publishers do
    resources :authors
  end

  resources :authors do
    resources :books do 
    end
  

  end

  resources :authors do
    member do
      get 'about_modal' # Add this line to define the new action
    end
  end


  resources :authors

  root 'books#home'
  resources :price_updates, only: [:new, :create]

  namespace :api do
    resources :books do
      collection do
        get 'filter_title'
        get 'filter_author'
        get 'filter_price'
      end
    end
  end

end
