class ArticlesController < ApplicationController

	before_action :get_user, except: :index

	def index
		if params[:user_id]
			@user = User.find(params[:user_id])
			@articles = @user.articles.order(created_at: :asc)
		else
			@articles = Article.all.order(created_at: :asc)
		end
	end

	def new
		@article = Article.new
	end

	def create
		@user.articles << Article.create!(article_params)
		redirect_to user_path(@user.id)
	end

	def edit
		@article = Article.find(params[:id])
	end

	def update
		@article = Article.find(params[:id])
		@article.assign_attributes(article_params)
		if @article.save
			redirect_to user_article_path(@user, @article)
		else
			render :edit
		end

	end

	def show
		@article = Article.find(params[:id])
	end


	private

	def article_params
		params.require(:article).permit(:title, :body, :user_id)
	end

	def get_user
		@user = User.find(params[:user_id])
	end

end
