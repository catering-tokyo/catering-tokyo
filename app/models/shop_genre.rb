class ShopGenre < ApplicationRecord
	has_many :shops, through: :genres
end
