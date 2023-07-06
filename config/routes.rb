Rails.application.routes.draw do
  resources :custard_adjusters
  resources :custards
  resources :drinks
  resources :adjusters
  resources :items

  resources :orders do
    member do
      post 'payout'
    end
  end

  resources :users, param: :_username
  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'

  post '/checkout', to: 'orders#checkout'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
