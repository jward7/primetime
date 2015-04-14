# look for a table named primes. Knows how to change to singular
class Prime < ActiveRecord::Base


  has_many :speeds
end