class ArticlesController < ApplicationController
  # only respond to request for JSON
  respond_to :json

  def index
    @articles = Article.all
    # shortcut for render- like a render :json @articles
    respond_with(@articles)
  end

  def show
    @article = Article.find(params[:id])
    respond_with(@article)
  end

end
