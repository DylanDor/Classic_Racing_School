Rails.application.routes.draw do

  devise_for :users

  resources :orders

  resources :options
  resources :driving_courses

end
