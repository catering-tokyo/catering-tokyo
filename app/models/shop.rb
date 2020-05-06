class Shop < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         belongs_to :shop_genre


         has_many :informations, dependent: :destroy
         has_many :reviews, dependent: :destroy
         has_many :favorites, dependent: :destroy
         has_many :inquiries, dependent: :destroy
         has_many :courses, dependent: :destroy
         has_many :messages, dependent: :destroy
         has_many :rooms, dependent: :destroy
end