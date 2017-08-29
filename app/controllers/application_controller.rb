class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end


class SellersController < ApplicationController
	def index
		@sellers = Seller.all
	end

	def show
		@seller = Seller.find(params[:id])
	end
end