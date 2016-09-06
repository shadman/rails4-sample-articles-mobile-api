class ArticleController < ApplicationController

  # Method GET
  # Param: owner_name
  # Example: '/:owner_name/articles'
  # JSON Success Output: { "result": [ {"id": 1, "name": "Test name", "price": 33.22, "description": "Description test", "owner_name": "shadman"} ] } 
  # JSON Error Output: { "result": { "error": { "message": "Sorry, no record(s) found." }
  def list
    owner_name = params[:owner_name]
    articles = Article.find_by_owner_name owner_name
    response_400('invalid') if articles.nil?

    response_200 articles
  end


  # Method GET
  # Param: id
  # Example: /articles/:id'
  # JSON Success Output: { "result": {"id": 1, "name": "Test name", "price": 33.22, "description": "Description test", "owner_name": "shadman"} } 
  # JSON Error Output: { "result": { "error": { "message": "Sorry, invalid request found." }
  def view
    article_id = params[:id]
    article = Article.find_by_id_with_owner article_id
    response_400('invalid') if article.nil?

    response_200 article
  end

end