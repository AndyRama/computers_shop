Rails.application.routes.draw do
  devise_for :users
  root 'computers#index'
  resources :computers, only: [:index, :show]
end
