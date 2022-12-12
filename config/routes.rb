Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  resources :cart_items
  
  devise_for :users
  resources :users, :only =>[:show, :edit, :destroy]

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
