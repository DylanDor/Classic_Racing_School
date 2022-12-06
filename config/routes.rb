Rails.application.routes.draw do

  devise_for :users

  resources :orders

  resources :driving_courses

  resources :options
  resources :driving_courses

end
