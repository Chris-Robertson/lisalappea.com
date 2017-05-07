Rails.application.routes.draw do

  resources :posts
  resources :profiles
  resources :items

  devise_for :users

  # Change devise routes
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'register', to: 'devise/registrations#new'
    delete 'logout', to: 'devise/sessions#destroy'
  end

  root to: 'home#index'

end
