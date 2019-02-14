class ArticlesController < ApplicationController

  # index is generally the first method in the controller
  def index
    @articles = Article.all
  end
  
  # A couple of things to note. We use Article.find to find the article 
  # we're interested in, passing in params[:id] to get the :id parameter from the request. 
  # We also use an instance variable (prefixed with @) to hold a reference to the article object. 
  # We do this because Rails will pass all instance variables to the view
  def show
    @article = Article.find(params[:id])
  end
  
  def new
    
  end

  def create
    puts params.class # -> ActionController::Parameters
    # example to get a response of what the params look like:
    # render plain: params[:article].inspect
    # looks like this..
    # <ActionController::Parameters {"title"=>"asdf", "text"=>"fdsa"} permitted: false>

    # this is unsafe and wont work
    # @article = Article.new(params[:article])
    # must use the article params method
    @article = Article.new(article_params)

    @article.save
    redirect_to @article
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end