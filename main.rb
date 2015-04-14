require 'sinatra'
require 'sinatra/reloader'
require 'pg'
require 'pry'
require 'active_record'
require 'RubyInline'
require 'sinatra/form_helpers'

require_relative 'config'
require_relative 'computer'
require_relative 'prime'
require_relative 'speed'

get '/' do
  erb :index
end





