Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.

  # Defines the root path route ("/")
  # root "posts#index"

  # GET /about
  get "about-us", to:"about#index", as: :about
  get "sign_up", to:"registration#new"
  post "sign_up", to: "registration#create"
  delete "logout", to:  "sessions#destroy"

  get "sign_in", to:"sessions#new"
  post "sign_in", to: "sessions#create"

  # GET /
  root to:"main#index"
end
