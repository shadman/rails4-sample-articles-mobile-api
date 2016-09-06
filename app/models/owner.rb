class Owner < ActiveRecord::Base

 has_many :article

 def find_owner_by_name owner_name
  Owner.select('id, name').find_by(name: owner_name)
 end

 def all_actived
  Owner.select('id, name').where(status: 1)
 end

end
