class CampsiteGenre < ApplicationRecord

	belongs_to :campsite
	belongs_to :genre
end
