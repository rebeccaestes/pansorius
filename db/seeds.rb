# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.all
Profile.create(role: 'mentor', user: users.first, quote: 'this is my quote. there are many like it but this one is mine')
Experience.create(role: 'Software Developer', company: 'Optoro', description: 'did stuff with ruby', start_date: 'January 2016', end_date: 'Present', profile: Profile.all.first)
