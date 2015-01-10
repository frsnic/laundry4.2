Rails.application.routes.draw do
  resources :orders

  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users

  resources :users

  resources :webs


end
