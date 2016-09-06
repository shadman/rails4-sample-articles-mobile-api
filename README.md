# rails4-sample-articles-mobile-api

Sample JSON API in Ruby 4 for Articles and Owner details

# Create database and update configuration

You need to create a database first, then add that configuration details inside `database.yml` file

	vim config/database.yml


# Run bundle install to install all required Gems

	bundle install

# Run Migrations to create tables

	rale db:migrate

# Run Seeds fot test data

	rake db:seed

# API Details

## Get a list of all articles for any specific owner:

	get '/:owner_name/articles'

### Respomse:
	
	{"result":{"id":1,"owner_name":"shadman","articles":[{"id":1,"name":"Article Name 1","price":"23.36","description":"test description 1 here"},{"id":2,"name":"Article Name 2","price":"43.36","description":"test description 2 here"}]}}


## Get any specific article details:

	get '/articles/:id'

### Respomse:

	{"result":{"id":1,"name":"Article Name 1","price":"23.36","description":"test description 1 here","owner_name":"shadman"}}


## Get a list of all owners:

	get '/owners'

### Respomse:

	{"result":{"owners":[{"id":1,"name":"shadman"},{"id":2,"name":"matz"},{"id":3,"name":"test"}]}}


## Get any specific owner details:

	get '/:owner_name'

### Respomse:

	{"result":{"id":1,"name":"shadman"}}


Cheers !