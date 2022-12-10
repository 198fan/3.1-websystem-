Rails.application.routes.draw do
  resources :customers
  #get 'home/index'
  get 'home/user'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
