Rails.application.routes.draw do
  root 'items#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items
  resources :carts
  resources :orders
  resources :charges

  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users, only: [:show] do
    resources :profil_pictures, only: [:create]
  end


end
