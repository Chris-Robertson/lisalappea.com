Rails.application.routes.draw do
  root to: 'home#index'

  resources :posts
  resources :profiles
  resources :items
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  get 'categories', to: 'categories#index'
  get 'shop', to: 'shop#index'

  devise_for :users
  # Change devise routes
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'register', to: 'devise/registrations#new'
    delete 'logout', to: 'devise/sessions#destroy'
  end
end
