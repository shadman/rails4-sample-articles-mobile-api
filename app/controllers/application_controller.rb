class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def response_200 result
  	render status: 200, json: { result: result } 
  end

  def response_400 message
  	render status: 400, json: { result: { error: { message: I18n.t(message) } } }
  end

end
