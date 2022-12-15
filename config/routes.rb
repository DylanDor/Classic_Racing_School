Rails.application.routes.draw do
  resources :promos
  namespace :admin do
      resources :users
      resources :carts
      resources :cart_items
      resources :driving_courses
      resources :orders
      resources :order_items
      resources :promos

      root to: "users#index"
    end

  resources :cart_items
  
  devise_for :users
  resources :users, :only =>[:show, :edit, :update, :destroy]

  resources :orders
  resources :options
  resources :driving_courses
  resources :carts

  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'success', to: 'checkout#success', as: 'checkout_success'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
  end

  root "driving_courses#index"

end
