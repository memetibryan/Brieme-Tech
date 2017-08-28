Rails.application.routes.draw do
  devise_for :sellers
  devise_for :customers
	root :to => 'index#index'
end
