class TradesController < ApplicationController	
	before_action :authenticate_user!
	
	def index
		@trade_items = Credit.all
	end
end
