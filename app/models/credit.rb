class Credit < ApplicationRecord
	belongs_to :user

	validates :name, :telephone,:price, :credit_amount, :presence => true
end
