Rails.application.routes.draw do
  root 'products#index'
  devise_for :users,controllers: {
  sessions:      'users/sessions',
  passwords:     'users/passwords',
  registrations: 'users/registrations'
}
  devise_for :shops,controllers: {
  sessions:      'shops/sessions',
  passwords:     'shops/passwords',
  registrations: 'shops/registrations'
}
  resources :shops, only:[:index, :show]
  resources :products
  resources :cart_products, only: [:show, :new, :create, :destroy ]
  resources :carts, only:[ :index, :edit, :update ]

end

