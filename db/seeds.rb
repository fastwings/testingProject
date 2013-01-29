# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
if Status.count == 0 
	Status.create({name: "active"})
	Status.create({name: "inactive"})
	Status.create({name: "pending"})
	Status.create({name: "rejected"})
	Status.create({name: "sending"})
	Status.create({name: "contentItemPending"})
	Status.create({name: "contentItemListed"})
	Status.create({name: "staticItemListed"})
	Status.create({name: "requestItemPending"})
end

if Apis.count == 0 
	active_status = Status.find_by({name:"active"})
	youtub = Apis.new({name:"youtube", description:"Youtube API Used youtube_it gem"})
	youtub.status.build(active_status)
	youtub.save!
	itunes = Apis.new({name:"itunes", description:"ITUNES API Used itunes gem"})
	itunes.status.build(active_status)
	itunes.save!
	factual = Apis.new({name:"factual", description:"FACTUAL API Used FACTUAL gem"})
	factual.status.build(active_status.id)
	factual.save!
end