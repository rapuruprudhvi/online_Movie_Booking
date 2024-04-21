Rails.application.routes.draw do
  get 'movies/index'
  get 'movies/show'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  
  # Define resources for users
  resources :users

  # Define the root path route ("/")
  root to: "home#index"

end
