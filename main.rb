require 'sinatra'
require 'sinatra/reloader'
require 'pg' #for postgresql database
require 'pry'
require 'sinatra/form_helpers'
#require 'bcrypt'

#enable :sessions

require_relative 'config'
require_relative 'computer'
require_relative 'prime'
require_relative 'speed'
require_relative 'database'

Database.clear_tables
Database.seed

before do

  #@speeds = Speed.all    # todo keep dry by removing duplication below. Need to test after removing items below.
end

=begin
after do # after is a sinatra request after every route.
  ActiveRecord::Base.connection.close
end
=end

# root route
get '/' do
  @prime= Prime.all
  @speed = Speed.all
  @computer = Computer.all
  @computer1 = @speed.computers.create(computer_c: 'Mac', manufacture_year: 2005)
  #Speed.create speed_c: 56, person: 'jw'
  #Speed.create speed_c: 66, person: 'Arnold', computer_c: 'Mac Book Pro'
  #@s3 = Speed.all.last.computer_c # todo here trying to get associate working
  #@s4 = Computer.speed.create()
  erb :index
end

# make 5 RESTFUL routes
# display speed test
get '/speeds' do
  @speeds = Speed.all

  erb :index
end

# the next two routes work as a pair to display a create new item and then submit the new item

# new speed test  - part 1
get '/speeds/new' do
  erb :new
end

# new speed test -part 2 todo not tested yet.
post '/speeds' do
  speed = Speed.new
  speed.speed_c = params[:speed]
  speed.person = params[:person]
  if speed.save
    redirect to '/'
  else
    erb :new
  end
end

# the next two routes work as a pair to display an edit form and submit edits

# show edit form
get '/speeds/:id/edit' do
  @speed = Speed.find(params[:id])      # get the first value. Find is specific. Where is flexible

  erb :edit
end

# update existing speed test
put '/speeds/:id/edit' do
  edit_speed = Speed.find(params[:id])
  edit_speed.speed_c = params[:speed]
  edit_speed.person = params[:person]
  edit_speed.save

  redirect to '/'
end

# delete existing speed test. Should work as an extension of edit, but with post button
post '/speeds/:id/delete' do
  edit_speed = Speed.find(params[:id])
  edit_speed.delete    # only need to save when you are modifying the object.

  redirect to '/'
end

get '/api/example' do
  erb :api
end

# JSON API

get '/api/speeds' do
  content_type :json
  Speed.all.to_json
end

post '/api/speeds' do
  speed = Speed.new
  speed.person  = params[:person]
  speed.speed_c = params[:result]
  speed.save

  content_type :json
  speed.to_json
end
