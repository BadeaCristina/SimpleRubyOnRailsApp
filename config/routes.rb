Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  
  get "about-us", to:"about#index", as: :about
  get "password", to:"passwords#edit", as: :edit_password
  patch "password", to:"passwords#update" 
  get "sign_up", to:"registration#new"
  post "sign_up", to: "registration#create"
  delete "logout", to:  "sessions#destroy"

  get "sign_in", to:"sessions#new"
  post "sign_in", to: "sessions#create"

  # GET /
  root to:"main#index"
end
