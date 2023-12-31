Rails.application.routes.draw do
  resources :user_groups
  resources :tasks do
    resources :comments
  end
  resources :projects
  resources :groups
  resources :comments

  resources :notifications, only: [:index]
  
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  get 'change_role', to: 'roles#change_role'
  match 'change_role', to: 'roles#update_role', via: [:post, :patch]

  root "home#index"

  get '/search_users', to: 'users#search', as: 'search_users'

  resources :messages, only: [:new, :create, :show, :index]

  resources :users do
    get 'logout', on: :member, to: 'users#logout'
  end
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
