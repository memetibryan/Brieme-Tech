class SellersController < ApplicationController
	def index
		@sellers = User.all
	end

	def show
		@seller = User.find(params[:id])
		@logged_user = @seller
		@products = Credit.paginate(:page => params[:page], :per_page => 2)
	end
end