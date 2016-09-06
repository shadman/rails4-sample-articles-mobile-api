class OwnerController < ApplicationController

  # Method GET
  # Example: '/owners'
  # JSON Success Response: {"result":{"owners":[{"id":1,"name":"shadman"},{"id":2,"name":"matz"},{"id":3,"name":"test"}]}}
  # JSON Error Response: {"result":{"error":{"message":"Sorry, no record(s) found."}
  def list
    owner = Owner.new
    owners = owner.all_actived
    owners_data = { owners: owners }
    return response_400('no_record') if owners.nil?

    response_200 owners_data
  end


  # Method GET
  # Param: owner_name
  # Example: '/:owner_name'
  # JSON Success Response: {"result":{"id":1,"name":"shadman"}}
  # JSON Error Response: {"result":{"error":{"message":"Sorry, invalid request found."}
  def view
    owner_name = params[:owner_name]
    owner = Owner.new
    owner_data = owner.find_owner_by_name owner_name
    return response_400('invalid') if owner_data.nil?

    response_200 owner_data
  end

end