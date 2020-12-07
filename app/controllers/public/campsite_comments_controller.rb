class Public::CampsiteCommentsController < ApplicationController

	def create
		@campsite_comment = CampsiteComment.new(campsite_comment_params)
		@campsite_comment.user = current_user
		@campsite_comment.campsite = Campsite.find(params[:campsite_id])
		@campsite_comment.save
		redirect_to public_campsites_path
	end

	def destroy
		@campsite_comment = CampsiteComment.find(params[:id])
		@campsite = Campsite.find(params[:campsite_id])
		@campsite_comment.destroy
		redirect_to public_campsite_path(@campsite)
	end




	private

		def campsite_comment_params
			params.require(:campsite_comment).permit(:title, :comment, :rate)
		end
end
