# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

activities = []
activities << Activity.create(name: 'Relaxing')
activities << Activity.create(name: 'Surfing')
activities << Activity.create(name: 'Snowboarding')
activities << Activity.create(name: 'Kite Surfing')
activities << Activity.create(name: 'Fine Dining')
activities << Activity.create(name: 'Running')
activities << Activity.create(name: 'Mountain Biking')
activities << Activity.create(name: 'Road Cycling')

locations = []
locations << Location.create(name: 'Los Cabos')
locations << Location.create(name: 'Lake Tahoe')
locations << Location.create(name: 'Paris')
locations << Location.create(name: 'San Diego')
locations << Location.create(name: 'Portland')

# Los Cabos
locations[0].activities << activities[0]
locations[0].activities << activities[1]
locations[0].activities << activities[3]
locations[0].activities << activities[4]
locations[0].activities << activities[5]
locations[0].activities << activities[-1]

# Lake Tahoe  
locations[1].activities << activities[0]
locations[1].activities << activities[2]
locations[1].activities << activities[3]
locations[1].activities << activities[6]
locations[1].activities << activities[-1]

# Paris 
locations[2].activities << activities[0]
locations[2].activities << activities[4]
locations[2].activities << activities[5]
locations[2].activities << activities[-1]

# San Diego 
locations[3].activities << activities[0]
locations[3].activities << activities[1]
locations[3].activities << activities[3]
locations[3].activities << activities[5]
locations[3].activities << activities[-1]

# Portland 
locations[4].activities << activities[0]
locations[4].activities << activities[2]
locations[4].activities << activities[3]
locations[4].activities << activities[4]
locations[4].activities << activities[5]
locations[4].activities << activities[-2]
locations[4].activities << activities[-1]















