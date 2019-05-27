Rails.application.routes.draw do  
  root 'items#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items
  resources :carts
  resources :orders
  resources :users
  devise_for :users
end
