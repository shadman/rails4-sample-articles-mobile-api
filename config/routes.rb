Rails.application.routes.draw do

	get '/:owner_name/articles' => 'articles#list'
	get '/articles/:id' => 'articles#view'

	get '/owners' => 'owners#list'
	get '/:owner_name' => 'owners#view'

end
