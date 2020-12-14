class Admin::AdminsController < ApplicationController


	def mypage
		@admin = Admin.find(params[:id])
	end
end
