class Post < ApplicationRecord

	belongs_to :user
	belongs_to :campsite
	attachment :post_image
end
