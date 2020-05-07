class Order < ApplicationRecord
	enum order_status: {
		未対応: 0,
		対応中: 1,
		対応済: 2
	}
	belongs_to :course
	belongs_to :user
	belongs_to :shop

	has_many :notifications, dependent: :destroy
end
