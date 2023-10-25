Rails.application.routes.draw do
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
  root "books#index"
end
