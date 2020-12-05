class Genre < ApplicationRecord

	has_many :campsite_genres, dependent: :destroy
	has_many :campsites, through: :campsite_genres
end
