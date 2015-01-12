Rails.application.routes.draw do

  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users

  resources :members

  resources :orders

  resources :users do
    collection do
      #post :registrations
    end
  end

  resources :webs

end
