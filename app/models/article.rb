class Article < ActiveRecord::Base

 belongs_to :owner

 def find_by_id_with_owner id
  Article.select('articles.id, articles.name, price, description, ow.name as owner_name')
   .joins(' LEFT JOIN owners as ow on ow.id = articles.owner_id ')
   .where(' articles.status = 1 AND articles.id = ? ', id).first
 end

end
