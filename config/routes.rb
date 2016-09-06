Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	get '/:owner_name/articles' => 'articles#list'
	get '/articles/:id' => 'articles#view'

	get '/owners' => 'owners#list'
	get '/:owner_name' => 'owners#view'

end
