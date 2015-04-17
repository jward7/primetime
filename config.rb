require 'active_record'

local_db = {
    :adapter => 'postgresql',
    :username => 'postgres',
    :password => 'drexler69',
    :database => 'primetime'
}

#heroku_db_url = 'postgres://HEROKU_POSTGRESQL_MAROON_URL' # get this from a previous step in setting up heroku.
#ActiveRecord::Base.establish_connection(heroku_db_url)
ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || local_db)

=begin
Dish.create name: 'cake pudding'
Dish.create name: 'Birthday cake'
Dish.find 6
Dish.all
Dish.where name: "cake pudding"
Dish.where name => "cake pudding"
Dish.where(name => "cake pudding")
Dish.where(name => "cake pudding").count

dish = Dish.find(7)
dish.name
dish.name = "hello world"
dish.save

unwanted_dish = Dish.find(7)
unwanted_dish.delete
Dish.all
=end