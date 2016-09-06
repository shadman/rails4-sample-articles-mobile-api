class ArticleController < ApplicationController

  # Method GET
  # Param: owner_name
  # Example: '/:owner_name/articles'
  def list
    owner_name = params[:owner_name]
    articles = Article.find_by_owner_name owner_name
    response_400('invalid') if articles.nil?

    response_200 articles
  end

  # Method GET
  # Param: id
  # Example: /articles/:id'
  def view
    article_id = params[:id]
    article = Article.find_by_id article_id
    response_400('invalid') if article.nil?

    response_200 article
  end

end