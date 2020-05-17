class Order < ApplicationRecord
  attr_accessor :radio
	enum order_status: {
		not_compatibled: 0,
		during_correspondenced: 1,
		supported: 2
	}

	belongs_to :shop
	belongs_to :user

	has_many :notifications, dependent: :destroy

end

