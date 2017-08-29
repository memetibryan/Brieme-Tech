class SellersController < ApplicationController
	def index
		@sellers = User.all
	end

	def show
		@seller = User.find(params[:id])
		@current_user = current_user
		@logged_user = @seller
	end
end