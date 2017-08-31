class TradesController < ApplicationController	
	before_action :authenticate_user!
	
	def index
		@trade_items = if params[:term]
          Credit.where('location LIKE ?', "%#{params[:term]}%")
        else
          @products = Credit.all
        end
	end

private
	def credit_params
		params.require(:credit).permit(:term)
	end
end
