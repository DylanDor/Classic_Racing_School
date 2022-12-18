Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :carts
      resources :cart_items
      resources :driving_courses
      resources :orders
      resources :order_items

      root to: "users#index"
    end
  
  get '/mentions-legales', to: 'statics_pages#legacy'

  resources :cart_items, :only =>[:create, :destroy]
  
  devise_for :users, path: 'mon_compte'
  resources :users, :only =>[:show, :edit, :update, :destroy], path: 'mon_compte'


  resources :orders, :only => [:index], path: 'commandes'
  resources :options, :only => [:index]
  resources :driving_courses, :only => [:show, :index], path: 'stages'
  resources :carts, :only => [:show, :edit, :update, :destroy], path: 'mon_panier'

  scope '/paiement' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'succes', to: 'checkout#success', as: 'checkout_success'
    get 'annulation', to: 'checkout#cancel', as: 'checkout_cancel'
  end

  root "driving_courses#index"

end
