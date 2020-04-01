Rails.application.routes.draw do
  resources :applications
  resources :jobs
  resources :companyusers
  resources :companies
  resources :users

  post "auth/sign_in" to: "authentication#sign_in"
  post "auth/sign_up" to: "authentication#sign_up"
  # post "auth/forgot_password", to: "authentication#forgot_password"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
