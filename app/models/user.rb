class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :addresses, dependent: :destroy
  has_many :credit_cards, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :rooms, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :inquiries, dependent: :destroy
  has_many :addresses, dependent: :destroy
  has_many :favorites, dependent: :destroy

  validates :name,  presence: true, length: { maximum: 20 }
  validates :phonenumber,  presence: true
  validates :address,  presence: true
  acts_as_paranoid

end

