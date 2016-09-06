class Article < ActiveRecord::Base

 belongs_to :owner

 def find_by_owner_name owner_name
  Article.joins(' LEFT JOIN owners as ow on ow.id = articles.owner_id ').where(' owners.name = ? ', owner_name)
 end

end
