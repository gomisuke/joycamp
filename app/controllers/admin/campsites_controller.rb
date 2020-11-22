class Admin::CampsitesController < ApplicationController


  def new
  	@campsite = Campsite.new
  end

  def create
  	@campsite = Campsite.new(campsite_params)
  	if @campsite.save
  		flash[:success] = "登録しました"
  		redirect_to admin_campsites_path
  	else
  		render = 'new'
  	end
  end

  def index
  	@campsites = Campsite.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
