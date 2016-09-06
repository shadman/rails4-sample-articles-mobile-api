class Owner < ActiveRecord::Base

 has_many :article

 def find_owner_by_name owner_name
  Owner.select('id, name').find_by(name: owner_name, status: 1).first
 end

 def all_actived
  Owner.select('id, name').find_by(status: 1).all
 end

end
