class Public::CampsaitesController < ApplicationController

  def index
  	@campsites = Campsite.all
  end


end
