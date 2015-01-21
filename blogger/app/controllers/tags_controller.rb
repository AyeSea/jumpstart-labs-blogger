class TagsController < ApplicationController
	def show
		@tag = Tag.find(params[:id])
	end


	def index
		@tags = Tag.all
	end


	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy

		flash.notice = "Deleted the '#{@tag.name}' tag!"

		redirect_to tags_path
	end
end