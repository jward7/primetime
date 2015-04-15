# look for a table named computers. Knows how to change to singular
class Computer < ActiveRecord::Base
  belongs_to :speed
end