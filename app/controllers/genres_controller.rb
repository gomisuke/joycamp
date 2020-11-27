class GenresController < ApplicationController

  def new
  	@genre = Genre.new
  end

  def create
  	@genre = Genre.new(genre_params)
  	if @genre.save
  		flash[:success] = "登録しました。"
  		redirect_to genres_path
  	else
  		render 'new'
  	end
  end

  def index
  	@genres = Genre.all
  end


  private

  	def genre_params
  		params.require(:genre).permit(:name, :is_active)
  	end
end
