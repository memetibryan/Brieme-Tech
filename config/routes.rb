Rails.application.routes.draw do
  devise_for :users do
  	resources :credits
  end

  resources :users do
    resources :credits
  end

  resources :sellers do
  	resources :credits
  end

  root :to => 'index#index'

  resources :customers
  resources :about
  resources :trades
  resources :messages
  resources :charges
end
