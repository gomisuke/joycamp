class Public::FavoritesController < ApplicationController


	def create
		@favorite = Favorite.new
		@favorite.campsite = Campsite.find(params[:campsite_id])
		@favorite.user = current_user
		@favorite.save
		redirect_to public_campsites_path
	end

	def destroy
		@favorite = Favorite.find_by(user_id: params[:id], campsite_id: params[:campsite_id])
		@favorite.destroy
		redirect_to public_campsites_path
	end
end
