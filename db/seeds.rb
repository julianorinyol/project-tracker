# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

l=Leader.create(name:"Donkey Anderson", provider:"facebook", uid:"123123")
o=Organization.create(leader_id: l.id ,name: 'CatCo.', description: "Cat People: david bowie too" , contact_email: 'blabla@gmail.com' )
p=Project.create(organization_id: o.id, name: 'cool cat website', description: 'a slick website for learning about cats')
q=Project.create(organization_id: o.id, name: 'Banks for more trees', description: 'for some reason, banks want more trees, a website about that')
r=Project.create(organization_id: o.id, name: 'Pseudo-anarchist puppeteer mafia', description: 'a website for politically-like-minded puppeteers')
