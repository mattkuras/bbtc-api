Rails.application.routes.draw do
  namespace :api do
   namespace :v1 do
    resources :admins
    post "/login", to: "sessions#login"
    get "/auto_login", to: "sessions#auto_login"
   end
  end
 end