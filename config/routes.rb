Rails.application.routes.draw do
  devise_for :users

  root :to => 'index#index'

  resources :users do
  	resources :credits
  end

  resources :customers
  resources :sellers
  resources :about
  resources :trades
end
