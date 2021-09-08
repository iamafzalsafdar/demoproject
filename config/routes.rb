Rails.application.routes.draw do
  devise_for :usermodels
  root 'pages#home'

  get "/users", to: "users#index"
  post 'posts/action'
  resources :users
  resources :posts do
    resources:comments
    end
  resources:login
end
