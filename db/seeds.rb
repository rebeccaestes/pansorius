# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Value.destroy_all
Skill.destroy_all

users = User.all

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
Skill.create(skill: 'Delegation')
Skill.create(skill: 'Communication')
Skill.create(skill: 'Motivational')
Skill.create(skill: 'Problem solving')
Skill.create(skill: 'Relational')
Skill.create(skill: 'Analytical')
Skill.create(skill: 'Procedural')
Skill.create(skill: 'Innovation')
Skill.create(skill: 'Strategy')
Skill.create(skill: 'Mentoring')
Skill.create(skill: 'Development')
Skill.create(skill: 'Entrepreneurship')
Skill.create(skill: 'Marketing')
Skill.create(skill: 'Branding')
Skill.create(skill: 'Public Relations')
Skill.create(skill: 'Deliberate')
Skill.create(skill: 'Researching')
Skill.create(skill: 'Management')
Skill.create(skill: 'Finance')
Skill.create(skill: 'Design')


# Value.create(value: 'awesomeness', user: users.first)

# user = User.find(2)
# Profile.create(role: 'protege', insights: 'I know stuff, this is an insights', user: user, quote: 'this is my quote. there are many like it but this one is mine')


# prof = Profile.find_by(role: 'protege')
# Experience.create(role: 'Software Developer', company: 'Optoro', description: 'did stuff with ruby', start_date: 'January 2016', end_date: 'Present', profile: prof)

User.create([
  {email: "philip@example.com", password: "password"},
  {email: "lisa@example.com", password: "password"},
  {email: "david@example.com", password: "password"},
  {email: "esther@example.com", password: "password"},
  {email: "eugenia@example.com", password: "password"},
  {email: "joyce@example.com", password: "password"},
  {email: "nicole@example.com", password: "password"},
  {email: "cathleen@example.com", password: "password"},
  {email: "kristen@example.com", password: "password"},
  {email: "alicia@example.com", password: "password"}
])

Profile.create(role: "mentor", 
							user: User.find(1), 
							name: "Philip Smith", 
							location: "Arlington, VA",
							quote: "There can never be too manyleaders in the world.", 
							insights: "Lead by example.", 
							image_url: "http://i.kinja-img.com/gawker-media/image/upload/s--FJ4m_ViD--/18j05qgz6tfxjjpg.jpg"
							)

Profile.create(role: "mentor", 
							user: User.find(2), 
							name: "Lisa Sims", 
							location: "Washington, DC",
							quote: "We can't change the world alone, we need innovators and changemakers to make an impact!", 
							insights: "Avoid common pitfalls of leadership.", 
							image_url: "http://i.kinja-img.com/gawker-media/image/upload/s--FJ4m_ViD--/18j05qgz6tfxjjpg.jpg"
							)

Profile.create(role: "mentor", 
							user: User.find(3), 
							name: "David Stewart", 
							location: "Reston, VA",
							quote: "I exist in the intersection of impact, entrepreneurship, and technology.", 
							insights: "Never stop improving.", 
							image_url: "http://i.kinja-img.com/gawker-media/image/upload/s--FJ4m_ViD--/18j05qgz6tfxjjpg.jpg"
							)

Profile.create(role: "mentor", 
							user: User.find(4), 
							name: "Esther Yun", 
							location: "Bethesda, MD",
							quote: "What good is knowledge if it is not shared with others?", 
							insights: "Keep meetings productive.", 
							image_url: "http://i.kinja-img.com/gawker-media/image/upload/s--FJ4m_ViD--/18j05qgz6tfxjjpg.jpg"
							)

Profile.create(role: "mentor", 
							user: User.find(5), 
							name: "Eugenia Davidson", 
							location: "Washington, DC",
							quote: "I thrive to empower others to think for themselves and be disruptive innovators.", 
							insights: "Find a mentor.", 
							image_url: "http://i.kinja-img.com/gawker-media/image/upload/s--FJ4m_ViD--/18j05qgz6tfxjjpg.jpg"
							)

Profile.create(role: "protege", 
							user: User.find(6), 
							name: "Joyce Lee", 
							location: "Washington, DC",
							quote: "Looking for mentor to help me with my startup.", 
							image_url: "http://i.kinja-img.com/gawker-media/image/upload/s--FJ4m_ViD--/18j05qgz6tfxjjpg.jpg"
							)

Profile.create(role: "protege", 
							user: User.find(6), 
							name: "Nicole Nguyen", 
							location: "Washington, DC",
							quote: "I love to move and shake the world of marketing!", 
							image_url: "http://i.kinja-img.com/gawker-media/image/upload/s--FJ4m_ViD--/18j05qgz6tfxjjpg.jpg"
							)

Profile.create(role: "protege", 
							user: User.find(6), 
							name: "Cathleen Tong", 
							location: "Silver Spring, MD",
							quote: "I am a passionate problem-solver, and love researching in the field. ", 
							image_url: "http://i.kinja-img.com/gawker-media/image/upload/s--FJ4m_ViD--/18j05qgz6tfxjjpg.jpg"
							)

Profile.create(role: "protege", 
							user: User.find(6), 
							name: "Kristen Koo", 
							location: "Arlington, VA",
							quote: "I want to help mentor those younger than me and get some guidance myself!", 
							image_url: "http://i.kinja-img.com/gawker-media/image/upload/s--FJ4m_ViD--/18j05qgz6tfxjjpg.jpg"
							)

Profile.create(role: "protege", 
							user: User.find(6), 
							name: "Alicia Le", 
							location: "Alexandria, VA",
							quote: "I want to join the ranks of changemakers and make an impact on social issues.", 
							image_url: "http://i.kinja-img.com/gawker-media/image/upload/s--FJ4m_ViD--/18j05qgz6tfxjjpg.jpg"
							)

# mentors = Profile.where(role: 'mentor')
# proteges = Profile.where(role: 'protege')

mentors = Profile.where(role: 'mentor')
proteges = Profile.where(role: 'protege')

mentors.each do |mentor|
	Experience.create(role: 'Senior Software Developer', company: 'Optoro', description: 'Expanded technology team, increased profits by 80%.', start_date: 'January 2014', end_date: 'Present', profile: mentor)
end

Skilltagging.create(profile_id: 1, skill_id: 1)
Skilltagging.create(profile_id: 1, skill_id: 2)
Skilltagging.create(profile_id: 1, skill_id: 3)
Valuetagging.create(profile_id: 1, value_id: 4)
Valuetagging.create(profile_id: 1, value_id: 5)

Skilltagging.create(profile_id: 6, skill_id: 4)
Skilltagging.create(profile_id: 6, skill_id: 5)
Skilltagging.create(profile_id: 6, skill_id: 6)
Valuetagging.create(profile_id: 6, value_id: 7)
Valuetagging.create(profile_id: 6, value_id: 8)


proteges.each do |protege|
	Experience.create(role: 'Junior Team Member', company: 'Deloitte Digital', description: 'Marketing and design assistance', start_date: 'June 2015', end_date: 'Present', profile: protege)
	Skilltagging.create(profile_id: protege, skill_id: rand(10))
	Valuetagging.create(profile_id: protege, value_id: rand(20))
end