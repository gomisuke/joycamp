class Public::FavoritesController < ApplicationController


	def create
		@campsite = Campsite.find(params[:campsite_id])
		@favorite = Favorite.new
		@favorite.campsite = @campsite
		@favorite.user = current_user
		@favorite.save
	end

	def destroy
		@campsite = Campsite.find(params[:campsite_id])
		@favorite = Favorite.find_by(user_id: params[:id], campsite_id: params[:campsite_id])
		@favorite.destroy
	end
end
