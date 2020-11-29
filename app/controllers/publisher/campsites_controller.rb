class Publisher::CampsitesController < ApplicationController
  def index
  	@campsite_unapproveds = Campsite.where(approval_status: 0)
  	@campsite_approveds = Campsite.where(approval_status: 1)
  end

  def show
  	@campsite = Campsite.find(params[:id])
  end

  def approval
  	@campsite = Campsite.find(params[:id])
  	@campsite.approval_status = "承認"
  	@campsite.save
  	redirect_to publisher_campsites_path
  end

  def approval_revoked
  	@campsite = Campsite.find(params[:id])
  	@campsite.approval_status = "未承認"
  	@campsite.save
  	redirect_to publisher_campsites_path
  end

end
