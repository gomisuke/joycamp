class Public::CampsitesController < ApplicationController

  def index
  	@campsites = Campsite.all
  end

  def show
  	@campsite = Campsite.find(params[:id])
  	@campsite_comment = CampsiteComment.new
  	@campsite_comments = CampsiteComment.where(campsite_id: @campsite.id)
  end

  def search
  	@campsites = Campsite.search(params[:search_params])
  	render 'index'
  end

end
