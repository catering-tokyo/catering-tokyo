class Message < ApplicationRecord
	belongs_to :user
	belongs_to :shop
	belongs_to :room
end
