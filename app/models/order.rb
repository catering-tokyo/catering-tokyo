class Order < ApplicationRecord
	belongs_to :course
	belongs_to :user

	has_many :notifications, dependent: :destroy
end
