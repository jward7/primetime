class Database
  def self.clear_tables
    # delete all from tables before reseeding
    Speed.delete_all
    Computer.delete_all
    Prime.delete_all
  end

  def self.seed
    # seed database tables
    Speed.create person: 'Jane', result: 999
    Speed.create person: 'Bob', result: 800
    Speed.create person: 'Bill', result: 700
    Speed.create person: 'Eden', result: 600
    Speed.create person: 'Justin', result: 500
    Speed.create person: 'Jill', result: 400

    Computer.create make: 'Windows', manufacture_year: 2006
    Computer.create make: 'Windows', manufacture_year: 2014
    Computer.create make: 'MacBook Pro', manufacture_year: 2013
    Computer.create make: 'MacBook Air', manufacture_year: 2012
    Computer.create make: 'MacBook Pro', manufacture_year: 2011
    Computer.create make: 'Windows', manufacture_year: 2015

    Prime.create num: 3, txt: '3', type_of: 'unknown' # no timestamp
    Prime.create num: 5, txt: '5', type_of: 'unknown' # no timestamp
    Prime.create num: 7, txt: '7', type_of: 'unknown' # no timestamp
    Prime.create num: 9, txt: '9', type_of: 'unknown' # no timestamp
    Prime.create num: 11, txt: '11', type_of: 'unknown' # no timestamp
    Prime.create num: 13, txt: '13', type_of: 'unknown' # no timestamp

=begin
    # attempt at linking tables
    c1 = Computer.create make: 'mac'
    c2 = Computer.create make: 'pc'

    s1 = Speed.create :person => 'Apple Fanboy', computer_id: c1.id  # belongs to
    s2 = Speed.create :person => 'PC kid', computer_id: c2.id
    s1.save
    s2.save
=end

=begin
    c1 = Computer.create name: 'mac'
    Computer.create name: 'pc'

    s1 = Speed.create :name => 'sdsdf', computer_id: c1.id  # belongs to
    s2 = Speed.create :name => 'sdsdf',
=end

  end
end