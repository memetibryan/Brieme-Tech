class Credit < ApplicationRecord
	belongs_to :seller

	validates :name, :telephone,:price, :credit_amount, :presence => true
end
