Rails.application.routes.draw do
  resources :orders

  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users

  resources :users do
    collection do
      post :registrations
    end
  end

  resources :webs


end
