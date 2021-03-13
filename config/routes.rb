Rails.application.routes.draw do
  devise_for :users
  root 'computers#index'
  resources :computers, only: [:index, :show]

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
end
