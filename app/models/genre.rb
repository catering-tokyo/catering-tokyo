class Genre < ApplicationRecord
	belongs_to :shop
	belongs_to :shop_genre

	
end
