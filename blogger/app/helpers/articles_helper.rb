module ArticlesHelper

	def article_params
		params.require(:article).permit(:title, :body)
		#Hash of form data.
	end

end
