Rails.application.routes.draw do
  root 'subscriptions#index'
  devise_for :users
  resources :locations, only: :index
  resources :localities, only: :index
  resources :subscriptions, only: [:index, :show]
end
