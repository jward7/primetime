# look for a table named speeds. Knows how to change to singular
class Speed < ActiveRecord::Base
  belongs_to :computer
  belongs_to :prime
end

# this is opposite now and it seems to work changed plural and has_many