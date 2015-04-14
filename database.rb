class Database
  def self.clear_tables
    # delete all from tables before reseeding
    Speed.delete_all
    Computer.delete_all
    Prime.delete_all
  end

  def self.seed
    # seed database tables
    Speed.create person: 'Justin', speed_c: 300
    Speed.create person: 'Bob', speed_c: 500
    Speed.create person: 'Bill', speed_c: 10
    Speed.create person: 'Eden', speed_c: 60
    Speed.create person: 'Jane', speed_c: 700
    Speed.create person: 'Jill', speed_c: 3000

    Computer.create computer_c: 'Windows', manufacture_year: 2006
    Computer.create computer_c: 'Windows', manufacture_year: 2014
    Computer.create computer_c: 'MacBook Pro', manufacture_year: 2013
    Computer.create computer_c: 'MacBook Air', manufacture_year: 2012
    Computer.create computer_c: 'MacBook Pro', manufacture_year: 2011
    Computer.create computer_c: 'Windows', manufacture_year: 2015

    Prime.create prime_c: 3, prime_text: '3', type_of: 'unknown' # no timestamp
    Prime.create prime_c: 5, prime_text: '5', type_of: 'unknown' # no timestamp
    Prime.create prime_c: 7, prime_text: '7', type_of: 'unknown' # no timestamp
    Prime.create prime_c: 9, prime_text: '9', type_of: 'unknown' # no timestamp
    Prime.create prime_c: 11, prime_text: '11', type_of: 'unknown' # no timestamp
    Prime.create prime_c: 13, prime_text: '13', type_of: 'unknown' # no timestamp
  end
end