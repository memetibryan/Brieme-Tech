class TradesController < ApplicationController	
	def index
		@trade_items = Credit.all
	end
end
