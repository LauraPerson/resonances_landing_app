class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]

  def index 
    if params[:query].present?
      sql_query = "title ILIKE :query OR content ILIKE :query"
      @articles = Article.where(sql_query, query: "%#{params[:query]}%")
    else
      @articles = Article.all.order(created_at: :desc)
    end
  end

  def new 
    @article = Article.new
    authorize @article
  end 

  def create
    @article = Article.new(article_params)
    @article.save 
    flash.alert = "Nouvel Article Ajouté"
    authorize @article

    redirect_to articles_path
  end
  
  def show
    @article = Article.find(params[:id])
    authorize @article

  end

  def edit
    @article = Article.find(params[:id])
    authorize @article

  end


  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    authorize @article

    redirect_to articles_path
  end


  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    authorize @article
    flash.alert = "Article supprimé"
    redirect_to articles_path
  end


  private 

  def article_params
    params.require(:article).permit(:title, :subtitle, :content, :author, :source_name, :source_link, :author, :photo)
  end
end
  
