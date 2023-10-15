Rails.application.routes.draw do
  resources :user_groups
  resources :tasks
  resources :projects
  resources :groups
  resources :comments
  devise_for :users
  root "home#index"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
