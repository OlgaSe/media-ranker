Rails.application.routes.draw do
  # verb "path", to: "controller#action"

  get "/login", to: "users#login_form", as: "login"
  post "/login", to: "users#login"
  post "/logout", to: "users#logout", as: "logout"
  #allow user to visit this page of they logged in
  get "/users/current", to: "users#current", as: "current_user"
  # get 'users/login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :works
  root to:'works#top'
  # resources :users
  # resources :votes
end
