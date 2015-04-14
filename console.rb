require 'active_record'
require 'pry'

ActiveRecord::Base.logger = Logger.new(STDERR) # show sql in the terminal

require_relative 'config'
require_relative 'computer'
require_relative 'speed'
require_relative 'prime'


binding.pry

