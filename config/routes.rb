Rails.application.routes.draw do
  resources :fights
  resources :users
  post "/login", to: "users#login"
  post '/signup', to: "users#signup"
  get "/me", to: "users#me"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
