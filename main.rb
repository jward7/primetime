require 'sinatra'
require 'sinatra/reloader'
require 'pg' #for postgresql database
require 'pry'
require 'sinatra/form_helpers'

require_relative 'config'
require_relative 'computer'
require_relative 'prime'
require_relative 'speed'
require_relative 'database'

Database.clear_tables
Database.seed

# root route
get '/' do
  @p = Prime.all.last.prime_c
  @s1 = Speed.all.last.person
  Speed.create speed_c: 77, person: 'Kevin'
  @s2 = Speed.all.last.person
  #Speed.create speed_c: 66, person: 'Arnold', computer_c: 'Mac Book Pro'
  #@s3 = Speed.all.last.computer_c # todo here trying to get associate working
  #@s4 = Computer.speed.create()
  @temp = [1,2,3,4,5]
  erb :index
end

# make 5 RESTFUL routes





