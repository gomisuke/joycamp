class CampsiteImage < ApplicationRecord

	belongs_to :campsite
	attachment :image
end
