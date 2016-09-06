class ArticleController < ApplicationController

  # Method GET
  # Param: owner_name
  # Example: '/:owner_name/articles'
  # JSON Success Response: {"result":{"id":1,"owner_name":"shadman","articles":[{"id":1,"name":"Article Name 1","price":"23.36","description":"test description 1 here"}]}}
  # JSON Error Response: {"result":{"error":{"message":"Sorry, no record(s) found."}
  def list
    owner_name = params[:owner_name]
    owner_data = Owner.select('id, name as owner_name').find_by_name(owner_name)

    return response_400('no_record') if owner_data.nil?

    articles = Article.select('id, name, price, description').where(owner_id: owner_data.id, status: 1)
    articles_data = { articles: articles }
    response = owner_data.as_json.merge(articles_data)

    response_200 response

  end


  # Method GET
  # Param: id
  # Example: /articles/:id'
  # JSON Success Response: {"result":{"id":1,"name":"Article Name 1","price":"23.36","description":"test description 1 here","owner_name":"shadman"}}
  # JSON Error Response: {"result":{"error":{"message":"Sorry, invalid request found."}
  def view
    article_id = params[:id]
    article = Article.new
    article_data = article.find_by_id_with_owner article_id
    return response_400('invalid') if article_data.nil?

    response_200 article_data
  end

end