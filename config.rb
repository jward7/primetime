require 'active_record'

ActiveRecord::Base.establish_connection(
    :adapter => 'postgresql',
    :username => 'postgres',
    :password => 'postgres',
    :database => 'primetime'
)

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