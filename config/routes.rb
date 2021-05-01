Rails.application.routes.draw do
  resources :fights
  resources :fighters
  post "/login", to: "fighters#login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
