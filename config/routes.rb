Rails.application.routes.draw do
  root 'pages#page'
  get 'home',to:'pages#page'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new'
  resources :orderproducts
  resources :addresses
  resources :orders
  resources :products
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
