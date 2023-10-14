Rails.application.routes.draw do
  resources :users
  resources :user_groups
  resources :tasks
  resources :projects
  resources :groups
  resources :comments
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
