Rails.application.routes.draw do
  resources :questionnaires
  resources :orderdetails
  resources :storages
  resources :books
  resources :orders
  resources :stores
  devise_for :users
  resources :customers
  #get 'home/index'
  get 'home/user'
  get 'home/dataview'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
