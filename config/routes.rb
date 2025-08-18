Rails.application.routes.draw do
  devise_for :users

  root to: 'items#index'
  #resources :orders, only: [:index]
  resources :items,  only: [:new, :create, :show, :edit, :update]
end
