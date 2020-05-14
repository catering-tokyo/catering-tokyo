class Order < ApplicationRecord
	enum order_status: {
		not_compatibled: 0,
		during_correspondenced: 1,
		supported: 2
	}


  class Order < ApplicationRecord


	belongs_to :shop
	belongs_to :user

	has_many :notifications, dependent: :destroy

end
