Rails.application.routes.draw do
  devise_for :users
  resources :books do
    collection do
      get 'search'
    end
  end
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "books#index"
end
