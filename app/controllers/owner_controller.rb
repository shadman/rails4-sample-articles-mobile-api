class OwnerController < ApplicationController

  # Method GET
  # Example: '/owners'
  # JSON Success Output: { "result": [ {"id": 1, "name": "shadman"}, {"id": 2, "name": "matz"} ] } 
  # JSON Error Output: { "result": { "error": { "message": "Sorry, no record(s) found." }
  def list
    owners = Owner.all_actived
    response_400('no_record') if owners.nil?

    response_200 owners
  end


  # Method GET
  # Param: owner_name
  # Example: '/:owner_name'
  # JSON Success Output: { "result": {"id": 1, "name": "shadman"} } 
  # JSON Error Output: { "result": { error: { "message": "Sorry, invalid request found." }
  def view
    owner_name = params[:owner_name]
    owner = Owner.find_owner_by_name owner_name
    response_400('invalid') if owner.nil?

    response_200 owner
  end

end