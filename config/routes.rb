Rails.application.routes.draw do

	get '/:owner_name/articles' => 'article#list'
	get '/articles/:id' => 'article#view'

	get '/owners' => 'owner#list'
	get '/:owner_name' => 'owner#view'

end
