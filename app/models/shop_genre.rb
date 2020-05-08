class ShopGenre < ApplicationRecord
	has_many :genres
	has_many :shops, through: :genres
	attachment :genre_image
end
