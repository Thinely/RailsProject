Rails.application.routes.draw do
  resources :houses
  resources :buildings
  resources :complaint_details
  resources :tenant_details
  resources :payment_details
  resources :house_details
  resources :caretakers
  get 'users/index'
  resources :admins
  resources :posts
  # mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :roles
  devise_for :users
  get 'home/index'
  root 'home#index'
  get 'home/about'
  get 'admin/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
