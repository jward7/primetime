# look for a table named speeds. Knows how to change to singular
class Speed < ActiveRecord::Base
  has_many :computers
  has_many :primes
end