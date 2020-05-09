class ShopGenre < ApplicationRecord
	has_many :genres, foreign_key: 'shop_genre_id'
	has_many :shops, through: :genres
	attachment :genre_image
end
