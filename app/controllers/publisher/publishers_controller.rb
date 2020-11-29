class Publisher::PublishersController < ApplicationController
  def management
  	@campsites = Campsite.all
  end
end
