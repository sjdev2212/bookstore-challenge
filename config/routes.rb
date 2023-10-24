Rails.application.routes.draw do
  devise_for :users
  resources :authors do
    resources :books do
      collection do
        get 'search'
      end
   
  end
 
  end
  resources :books, only: [:new, :create]
  
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "books#index"
end
