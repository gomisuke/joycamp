class Campsite < ApplicationRecord

	belongs_to :admin
	has_many :favorites, dependent: :destroy
	has_many :campsite_genres, dependent: :destroy
	has_many :genres, through: :campsite_genres
	has_many :campsite_comments, dependent: :destroy
	has_many :campsite_images, dependent: :destroy
	accepts_attachments_for :campsite_images, attachment: :image

	#住所(gem 'jp_prefecture')
	include JpPrefecture
	jp_prefecture :prefecture_code

	#地図(google_map_api)
	geocoded_by :address
  	after_validation :geocode

  	#attr_accessor :address

	enum	approval_status: [:未承認, :承認]

	#いいね済検証
	def favorited_by?(user)
  		favorites.where(user_id: user.id).exists?
	end

	#住所(gem 'jp_prefecture')
	def prefecture_name
	  JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
	end

	def prefecture_name=(prefecture_name)
	  self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
	end

	#レビュー平均
	def review_average
		if self.campsite_comments.count > 0
			@average = self.campsite_comments.sum(:rate) / self.campsite_comments.count.to_f
		else
			0
		end
	end

	#複数のカラムから一つのカラムに住所をまとめる
	def address
		"%s %s"%([self.prefecture.name,self.address_city,self.address_street])
	end


end
