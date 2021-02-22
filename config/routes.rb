Rails.application.routes.draw do
  # GET /
  root to: "main#index"
  # GET /about
  get "about", to: "about#index"
  #GET /password
  get "password", to: "passwords#edit", as: :edit_password
  #PATCH /password
  patch "password", to: "passwords#update"
  # GET /sign_up
  get "sign_up", to: "registrations#new"
  # POST /sign_up
  post "sign_up", to: "registrations#create"
  # DELETE /logout
  delete "logout", to: "sessions#destroy"
  # GET in
  get "sign_in", to: "sessions#new"
  # POST /sign_up
  post "sign_in", to: "sessions#create"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
