class ArticlesController < ApplicationController
  def index 
    @articles = Article.all
  end

  def new 
    @article = Article.new
  end 

  def create
    @article = Article.new(article_params)
    @article.save 
    flash.alert = "Nouvel Article Ajouté"
    redirect_to articles_path
  end
  
  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end


  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to articles_path
  end


  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash.alert = "Article supprimé"
    redirect_to articles_path
  end


  private 

  def article_params
    params.require(:article).permit(:title, :subtitle, :content, :author, :source_name, :source_link, :author, :photo)
  end
end
  
