class Public::CampsiteCommentsController < ApplicationController

	def create
		@campsite_comment = CampsiteComment.new(campsite_comment_params)
		@campsite_comment.user = current_user
		@campsite_comment.campsite = Campsite.find_by(params[:campsite_id])
		@campsite_comment.save
		redirect_to public_campsites_path
	end




	private

		def campsite_comment_params
			params.require(:campsite_comment).permit(:comment)
		end
end
