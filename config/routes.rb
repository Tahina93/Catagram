Rails.application.routes.draw do
  root 'items#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope(path_names: {new: "nouveau", edit: "modifier"}) do
    resources :items, path: 'photo'
    resources :carts, path: 'panier'
    get '/mon-panier', :to => 'carts#show'
    get '/mon-profil', :to => 'users#show'
    resources :orders, path: 'commande'
    devise_for :users, path: "", :controllers => {:registrations => "registrations"}, :path_names => { :sign_in => 'se-connecter', :sign_out => 'se-deconnecter', :sign_up => 's-enregistrer' }
    resources :users, only: [:show], path: 'client' do
      resources :profil_pictures, only: [:create], path: 'avatar'
    end
  resources :charges

  end

  get '/admins/index', to: 'admin/admins#index', as: 'admin_index'
  namespace :admin do
    resources :users
    resources :orders
    resources :items
  end

  get '/admins/users/:id', to: 'admins/users#destroy', as: 'admins_user_destroy'


#  devise_for :users, :controllers => {:registrations => "registrations"}
#  resources :users, only: [:show] do
#    resources :profil_pictures, only: [:create]


end