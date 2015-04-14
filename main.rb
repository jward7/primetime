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

get '/' do
  erb :index
end





