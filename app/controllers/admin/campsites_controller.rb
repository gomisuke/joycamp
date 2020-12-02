class Admin::CampsitesController < ApplicationController


  def new
  	@campsite = Campsite.new
    @campsite.campsite_images.build
  end

  def create
    #byebug
  	@campsite = Campsite.new(campsite_params)
    @campsite.admin = current_admin
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
  	@campsite = Campsite.find(params[:id])
  end

  def edit
  	@campsite = Campsite.find(params[:id])
  end

  def update
  	@campsite = Campsite.find(params[:id])
  	if @campsite.update(campsite_params)
  		flash[:notice] = "更新しました"
  		redirect_to admin_campsite_path(@campsite)
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@campsite = Campsite.find(params[:id])
  	@campsite.destroy
  	redirect_to admin_campsites_path
  end

  private

  	def campsite_params
  		params.require(:campsite).permit(:name, :explanation, :postcode, :prefecture_code, :address_city, :address_street, :latitude, :longitude, { :genre_ids => [], :campsite_images_images => [] } )
  	end

end
