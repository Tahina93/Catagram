Rails.application.routes.draw do
  root 'items#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :items
  resources :carts
  resources :orders
  resources :charges


 namespace :admin do
 	resources :users
 end

 get '/admins/users/:id', to: 'admins/users#destroy', as: 'admins_user_destroy'


  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users, only: [:show] do
    resources :profil_pictures, only: [:create]
  end


end
