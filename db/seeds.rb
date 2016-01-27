# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.all
Profile.create(role: 'mentor', insights: 'I know stuff, this is an insight', user: users.first, quote: 'this is my quote. there are many like it but this one is mine', image_url: 'http://www.placecage.com/c/200/300')
Experience.create(role: 'Software Developer', company: 'Optoro', description: 'did stuff with ruby', start_date: 'January 2016', end_date: 'Present', profile: Profile.all.first)
Value.create(value: 'Trust')
Value.create(value: 'Honesty')
Value.create(value: 'Intuition')
Value.create(value: 'Inspiration')
Value.create(value: 'Fortitude')
Value.create(value: 'Magnanimity')
Value.create(value: 'Humility')
Value.create(value: 'Discernment')
Value.create(value: 'Competance')
Value.create(value: 'Creativity')

# Value.create(value: 'awesomeness', user: users.first)

# user = User.find(2)
# Profile.create(role: 'protege', insights: 'I know stuff, this is an insight', user: user, quote: 'this is my quote. there are many like it but this one is mine')
# prof = Profile.find_by(role: 'protege')
# Experience.create(role: 'Software Developer', company: 'Optoro', description: 'did stuff with ruby', start_date: 'January 2016', end_date: 'Present', profile: prof)



prof = Profile.find_by(role: 'protege')
Experience.create(role: 'Software Developer', company: 'Optoro', description: 'did stuff with ruby', start_date: 'January 2016', end_date: 'Present', profile: prof)

Profile.create(role: 'mentor', user: users.first, quote: 'Never give up', image_url: 'http://www.placecage.com/c/200/300')
Profile.create(role: 'protege', user: users.last, quote: 'Reach for the stars', image_url: 'http://i.kinja-img.com/gawker-media/image/upload/s--FJ4m_ViD--/18j05qgz6tfxjjpg.jpg')
