class TradesController < ApplicationController	
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
