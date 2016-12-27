class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new

  end

  def create
    Article.create(image: article_params[:image], text: article_params[:text], user_id: current_user.id)
  end

  def show
    @article = Article.find(params[:id])
  end


private
  def article_params
    params.permit(:title, :text, :image)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
