class CreditsController < ApplicationController
	
	def new
		@seller = Seller.find(params[:seller_id,])
		@credit = @seller.credits.new
	end

	def create
		@seller = Seller.find(params[:seller_id])
		@credit = @seller.credits.new(credit_params)
		if @credit.save
			redirect_to seller_path(@seller)
		else
			render :new
		end
	end

	def edit
		@seller = Seller.find(params[:seller_id])
		@credit = Credit.find(params[:id])
	end

	def update
		@seller = Seller.find(params[:seller_id])
		@credit = Credit.find(params[:id])
		if @credit.update(credit_params)
			redirect_to seller_path(@seller)
		else
			render :new
		end
	end

	def destroy
		@seller = Seller.find(params[:seller_id])
		@credit = Credit.find(params[:id])
		@credit.destroy
		redirect_to seller_path(@seller)
	end

private
	def credit_params
		params.require(:credit).permit(:name,:telephone, :price, :credit_amount)
	end
end