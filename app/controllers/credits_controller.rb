class CreditsController < ApplicationController
	
	def new
		@seller = User.find(params[:user_id,])
		@credit = @seller.credits.new
	end

	def create
		@seller = User.find(params[:user_id])
		@credit = @seller.credits.new(credit_params)
		if @credit.save
			redirect_to seller_path(@seller)
		else
			render :new
		end
	end

	def edit
		@seller = User.find(params[:user_id])
		@credit = Credit.find(params[:id])
	end

	def update
		@seller = User.find(params[:user_id])
		@credit = Credit.find(params[:id])
		if @credit.update(credit_params)
			redirect_to seller_path(@seller)
		else
			render :new
		end
	end

	def destroy
		@seller = User.find(params[:user_id])
		@credit = Credit.find(params[:id])
		@credit.destroy
		redirect_to seller_path(@seller)
	end

private
	def credit_params
		params.require(:credit).permit(:name,:telephone, :price, :credit_amount)
	end
end