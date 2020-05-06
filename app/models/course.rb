class Course < ApplicationRecord
	has_many :orders, dependent: :destroy
	belongs_to :shop
end