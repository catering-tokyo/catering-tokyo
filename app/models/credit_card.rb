class CreditCard < ApplicationRecord
	belongs_to :user

	VALID_CARD_HOLDER_REGEX = /\A[A-Z ]+\z/			#railsだと ^ = \A, $ = \zらしい。
	validates :card_holder, presence: true,
                    		format: { with: VALID_CARD_HOLDER_REGEX }
	validates :card_number, presence: true
	validates :expiration_date, presence: true
end
