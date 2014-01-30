class CommentsController < ApplicationController

	before_action :get_article, :get_user

	def new
		@comment = Comment.new
	end

	def create
		@article.comments << Comment.create!(comment_params)
		redirect_to user_articles_path(@user)
	end


	private

	def comment_params
		params.require(:comment).permit(:body)
	end

	def get_article
		@article = Article.find(params[:article_id])
	end

	def get_user
		@user = User.find(params[:user_id])
	end

end
