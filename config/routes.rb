Rails.application.routes.draw do
  #root "stage#index" (enlever le commentaire quand l'index de stage sera en cours)
  devise_for :users

  resources :orders
  resources :options
  resources :driving_courses
  resources :carts
end
