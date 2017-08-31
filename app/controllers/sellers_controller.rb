class SellersController < ApplicationController
	def index
		@sellers = User.all
	end

	def show
		@seller = User.find(params[:id])
		@logged_user = @seller
	end
end