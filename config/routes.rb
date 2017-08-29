Rails.application.routes.draw do
  devise_for :users
  root :to => 'index#index'

  resources :sellers do
  	resources :credits
  end

  resources :customers
  resources :about
  resources :trades
end
