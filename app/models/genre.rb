class Genre < ApplicationRecord

	has_many :campsite_genres, dependent: :destroy
end
