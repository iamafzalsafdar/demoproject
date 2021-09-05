Rails.application.routes.draw do
  devise_for :usermodels
  root 'pages#home'

  get "/users", to: "users#index"
  resources :users
  resources :posts
  resources:login
end
