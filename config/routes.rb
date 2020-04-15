Rails.application.routes.draw do
  resources :applications
  resources :jobs
  resources :companyusers
  resources :companies
  resources :users

  post "/login", to: "users#login"
  get '/persist', to: "users#persist"
  # post "auth/forgot_password", to: "authentication#forgot_password"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
