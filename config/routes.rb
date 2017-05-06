Rails.application.routes.draw do

  resources :posts
  resources :profiles
  resources :items
  devise_for :users

  root to: 'home#index'
end
