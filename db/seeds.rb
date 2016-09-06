# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Owners
Owner.create([
	{ id: 1, name:'shadman', status:1 },
	{ id: 2, name:'matz', status:1 },
	{ id: 3, name:'test', status:1 }
	])


# Articles
Article.create([
	{ owner_id: 1, name: 'Article Name 1', price: '23.36', description: 'test description 1 here', status: 1 },
	{ owner_id: 1, name: 'Article Name 2', price: '56.35', description: 'test description 2 here', status: 1 },
	{ owner_id: 2, name: 'Article Name 3', price: '43.34', description: 'test description 3 here', status: 1 },
	{ owner_id: 2, name: 'Article Name 4', price: '34.22', description: 'test description 4 here', status: 1 },
	{ owner_id: 2, name: 'Article Name 5', price: '65.11', description: 'test description 5 here', status: 1 },
	{ owner_id: 2, name: 'Article Name 6', price: '55.31', description: 'test description 6 here', status: 1 },
	{ owner_id: 3, name: 'Article Name 7', price: '23.44', description: 'test description 7 here', status: 1 },
	{ owner_id: 1, name: 'Article Name 8', price: '76.30', description: 'test description 8 here', status: 1 },
	{ owner_id: 3, name: 'Article Name 9', price: '31.33', description: 'test description 9 here', status: 1 },
	{ owner_id: 3, name: 'Article Name 10', price: '13.63', description: 'test description 10 here', status: 1 },
	{ owner_id: 1, name: 'Article Name 11', price: '233.83', description: 'test description 11 here', status: 1 }
	])