first_user = User.new(name: 'Sample User', email: 'sample@email.com', password: 'sample')
second_user = User.new(name: 'Dammy User', email: 'dammy@email.com', password: 'dammy')
third_user = User.new(name: 'Foo Bar', email: 'foobar@email.com', password: 'foobar')

first_user.save!
