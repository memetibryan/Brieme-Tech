Rails.application.routes.draw do
  root :to => 'index#index'

  resources :sellers do
  	resources :credits
  end

  resources :customers
  resources :about
  resources :trades
end
