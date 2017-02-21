class Product < ApplicationRecord
	belongs_to :category 
		validates :price, presence: true
	    before_save :set_premium_category
	    scope :premium, -> {where(premium: true)}
	    scope :last_n, ->(x){limit(x)}

	def set_premium_category
		 unless self.premium.present? or self.premium==true
		 	self.premium = false
		 	
		 end
	end


end
