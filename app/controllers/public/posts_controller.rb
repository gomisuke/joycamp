class Public::PostsController < ApplicationController


  def new
    @post = Post.new
    @campsite = Campsite.find(params[:campsite_id])
  end

  def create
  	@post = Post.new(post_params)
  	@post.user = current_user
  	@post.campsite = Campsite.find(params[:campsite_id])
  	if @post.save
  		flash[:success] = "登録しました"
  		redirect_to public_campsite_path(@post.campsite)
  	else
  		render 'new'
  	end
  end



  private

  	def post_params
  		params.require(:post).permit(:post_image)
  	end
end
