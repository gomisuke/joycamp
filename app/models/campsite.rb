class Campsite < ApplicationRecord

	has_many :favorites, dependent: :destroy
	has_many :campsite_genres, dependent: :destroy
	has_many :genres, through: :campsite_genres
	has_many :campsite_images, dependent: :destroy
	accepts_attachments_for :campsite_images, attachment: :image


	def favorited_by?(user)
  		favorites.where(user_id: user.id).exists?
	end


	include JpPrefecture
	jp_prefecture :prefecture_code

	def prefecture_name
	  JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
	end

	def prefecture_name=(prefecture_name)
	  self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
	end


end
