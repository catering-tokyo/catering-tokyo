class Message < ApplicationRecord
  validates :message, presence: true
	belongs_to :user, optional: true
	belongs_to :shop, optional: true
	belongs_to :room
end
