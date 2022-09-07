Rails.application.routes.draw do
  get 'activities/edit'
  get 'activities/index'
  get 'activities/new'
  get 'concepts/new'
  get 'concepts/edit'

  resources :dashboard, :controller => 'users', only: [:show, :edit, :update]
  resources :terms
  resources :workers
  resources :clients
  resources :articles
  resources :concepts
  resources :activities
  resources :benefits


  resources :contacts, only: [:new, :create]




  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
