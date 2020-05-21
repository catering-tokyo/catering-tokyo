class Shop < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         has_many :informations, dependent: :destroy
         has_many :reviews, dependent: :destroy
         has_many :favorites, dependent: :destroy
         has_many :inquiries, dependent: :destroy
         has_many :orders, dependent: :destroy
         has_many :courses, dependent: :destroy
         has_many :messages, dependent: :destroy
         has_many :rooms, dependent: :destroy
         has_many :genres, dependent: :destroy, foreign_key: 'shop_id'
         has_many :shop_genres, through: :genres
         attr_accessor :shop_genre_ids
         # geocoded_by :address
         # after_validation :geocode, if: :address_changed?

         attachment :shop_image

    scope :search, -> (search_params) do
    return if search_params.blank?

    name_like(search_params[:name])
      .name_is(search_params[:address])
      .address_from(search_params[:birthday_from])
  end
      scope :name_like, -> (name) { where('name LIKE ?', "%#{name}%") if name.present? }
      scope :gender_is, -> (gender) { where(gender: gender) if gender.present? }
      scope :birthday_from, -> (from) { where('? <= birthday', from) if from.present? }
      scope :birthday_to, -> (to) { where('birthday <= ?', to) if to.present? }
      scope :prefecture_id_is, -> (prefecture_id) { where(prefecture_id: prefecture_id) if prefecture_id.present? }

  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # VALID_POSTAL_CODE = /\A\d{3}[-]\d{4}\z/  # 郵便番号（ハイフンあり7桁）
  # VALID_TEL = /\A\d{3}[-]\d{3}[-]\d{4}|\d{3}[-]\d{4}[-]\d{4}\z/  # 電話番号
  # with_options presence: true do
  #   validates :name
  #   validates :postal_code,     format: {
  #                                 with: VALID_POSTAL_CODE,
  #                                 message: "はハイフンあり7桁で入力してください。"
  #                               }
  #   validates :address
  #   validates :phonenumber,     format: {
  #                                 with: VALID_TEL,
  #                                 message: "の入力が間違っています（ハイフンありの数字）"
  #                               }
  #   validates :email,           format: {
  #                                 with: VALID_EMAIL_REGEX
  #                               }
  # end
end
