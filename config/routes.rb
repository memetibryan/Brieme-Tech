Rails.application.routes.draw do
  devise_for :users do
  	resources :credits
  end

  root :to => 'index#index'

  resources :customers
  resources :sellers
  resources :about
  resources :trades
end
