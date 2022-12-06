Rails.application.routes.draw do
  
  devise_for :users

  resources :orders
  resources :options
  resources :driving_courses
  resources :carts

  root "driving_courses#index"

end
