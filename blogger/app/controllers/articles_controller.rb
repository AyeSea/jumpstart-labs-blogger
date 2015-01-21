class ArticlesController < ApplicationController
	include ArticlesHelper

	def index
		@articles = Article.all
	end


	def show
		@article = Article.find(params[:id])
	end


	def new
		@article = Article.new
	end


	def create
		#fail
		#The above halts the HTTP request, throwing an error
		#and allowing you to examine the request parameters.
		@article = Article.new(article_params)
		@article.save

		flash.notice = "Created the '#{@article.title}' article!"

		redirect_to article_path(@article)
	end


	def destroy
		@article = Article.find(params[:id])
		@article.destroy

		flash.notice = "Deleted the '#{@article.title}' article!"

		redirect_to articles_path
	end


	def edit
		@article = Article.find(params[:id])
	end


	def update
		@article = Article.find(params[:id])
		@article.update(article_params)
		#The update method automatically saves changes. Compare this to the
		#new method where we had to explicitly save our updated @article.

		flash.notice = "Updated the '#{@article.title}' article!"

		redirect_to article_path(@article)
	end
end
