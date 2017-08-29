Rails.application.routes.draw do
  root :to => 'index#index'
  
  devise_for :sellers
  devise_for :customers

  resources :sellers do
  	resources :credits
  end

  resources :about
  resources :trades
end
