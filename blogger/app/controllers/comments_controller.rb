#Just as we needed articles_controller.rb to manipulate our Article objects,
#so we need a comments_controller.rb to manipulate our Comment objects.
class CommentsController < ApplicationController
	def create
		@comment = Comment.new(comment_params)
		@comment.article_id = params[:article_id]

		@comment.save

		redirect_to article_path(@comment.article)
		#Redirects user to the article page, which it finds by accessing @comment.article.
	end

	def comment_params
		params.require(:comment).permit(:author_name, :body)
	end
end
