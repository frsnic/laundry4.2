Rails.application.routes.draw do

  mount Upmin::Engine => '/admin'

  root to: 'visitors#index'

  devise_for :users


  resources :cloths

  resources :stores

  resources :store_users

  resources :members

  resources :orders do
    collection do
      get  :member
    end
  end

  resources :users do
    collection do
      #post :registrations
    end
  end

  resources :webs

end
