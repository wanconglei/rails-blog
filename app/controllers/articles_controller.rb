class ArticlesController < ApplicationController

	before_action :set_article, only: [:show, :edit, :update, :destroy]

	def index
		@articles = Article.page(params[:page]).per(5)

		respond_to do |format|
			format.html
			format.xml {render :xml => @articles.to_xml}
			format.json {render :json => @articles.to_json}
		end
	end

	def show
	end

	def new
		@article = Article.new
	end

	def edit
	end

	def create
		@article = Article.new(article_params)
		if @article.save
			flash[:notice] = "event was successfully created"
			redirect_to @article
		else
			render 'new'
		end	
	end

	def update

		if @article.update(article_params)
			flash[:notice] = "event was successfully updated"
			redirect_to @article
		else
			render 'edit'
		end
	end

	def destroy
		@article.destroy
		flash[:alert] = "event was successfully deleted"

		redirect_to articles_path
	end

	private
		def article_params
			params.require(:article).permit(:title, :text, :category_id)
		end

	def set_article
		@article = Article.find(params[:id])
	end
end
