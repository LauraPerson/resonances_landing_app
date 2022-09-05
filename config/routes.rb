Rails.application.routes.draw do
  get 'concepts/new'
  get 'concepts/edit'

  resources :dashboard, :controller => 'users', only: [:show, :edit, :update]
  resources :terms, only: [:edit, :update]
  resources :workers
  resources :clients
  resources :articles
  resources :concepts

  resources :contacts, only: [:new, :create]




  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
