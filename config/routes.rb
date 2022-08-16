Rails.application.routes.draw do

  resources :dashboard, :controller => 'users', only: [:show, :edit, :update]
  resources :terms, only: [:edit]
  resources :workers
  resources :clients
  resources :articles



  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
