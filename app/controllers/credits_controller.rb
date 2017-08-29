class CreditsController < ApplicationController
	before_action :authenticate_user!
	
	def new
		@user = User.find(params[:seller_id])
		@credit = @user.credits.new
	end

	def create
		@user = User.find(params[:user_id])
		@credit = @user.credits.new(credit_params)
		if @credit.save
			redirect_to seller_path(@user)
		else
			render :new
		end
	end

	def edit
		@user = User.find(params[:user_id])
		@credit = Credit.find(params[:id])
	end

	def update
		@user = User.find(params[:user_id])
		@credit = Credit.find(params[:id])
		if @credit.update(credit_params)
			redirect_to seller_path(@user)
		else
			render :new
		end
	end

	def destroy
		@user = User.find(params[:user_id])
		@credit = Credit.find(params[:id])
		@credit.destroy
		redirect_to seller_path(@user)
	end

private
	def credit_params
		params.require(:credit).permit(:name, :telephone, :price, :credit_amount)
	end
end