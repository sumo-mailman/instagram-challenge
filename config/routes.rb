Rails.application.routes.draw do
  devise_for :users
  
  resources :posts
  # devise_for :users
  root 'posts#index'

  get 'home/index'
  
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
