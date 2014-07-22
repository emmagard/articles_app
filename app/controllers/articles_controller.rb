class ArticlesController < ApplicationController
  # only respond to request for JSON
  def default_serializer_options
    {root: false}
  end

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
