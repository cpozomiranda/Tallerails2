class Product < ApplicationRecord
	belongs_to :category
		validates :price, presence: true
	    before_save :set_premium_category

	def set_premium_category
		 unless self.premium.present? or self.premium==true
		 	self.premium = false
		 	
		 end
	end
end
