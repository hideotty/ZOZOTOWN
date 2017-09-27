Rails.application.routes.draw do
  root 'products#index'
  devise_for :users

  resources :products
  resources :carts, only:[ :index]
  resources :payments, only:[ :index ]

end
