Rails.application.routes.draw do
  resources :custard_adjusters
  resources :custards
  resources :drinks
  resources :adjusters
  resources :items
  resources :orders
  post 'payout', on: :member
  resources :users

  post '/checkout', to: 'orders#checkout'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
