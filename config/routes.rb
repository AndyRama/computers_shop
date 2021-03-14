Rails.application.routes.draw do
  devise_for :users
  root 'computers#index'
  resources :computers, only: [:index, :show]

  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
     
  resources :charges, only:[:new, :create]

  mount StripeEvent::Engine, at: '/stripe-webhooks'
end
