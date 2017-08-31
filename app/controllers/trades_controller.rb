class TradesController < ApplicationController	
	def index
		@products = if params[:term]
          Credit.where('location LIKE ?', "%#{params[:term]}%").paginate(:page => params[:page], :per_page => 2)
        else
          @products = Credit.paginate(:page => params[:page], :per_page => 2)
        end
	end

private
	def credit_params
		params.require(:credit).permit(:term)
	end
end
