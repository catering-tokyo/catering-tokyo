class Address < ApplicationRecord
	belongs_to :user

	validates :name, presence: true
	validates :postal_code, presence: true
	validates :address, presence: true
	VALID_PHONE_NUMBER_REGEX = /\d{2,5}[-(]?\d{1,4}[-)]?\d{4}/
	validates :phone_number, presence: true,
                    		format: { with: VALID_PHONE_NUMBER_REGEX }

  

end
