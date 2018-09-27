# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Subway.create(letter: 'l', color: 'grey')
Subway.create(letter: 'a', color: 'blue')
Subway.create(letter: 'e', color: 'blue')
Subway.create(letter: 'f', color: 'orange')
Subway.create(letter: 'b', color: 'pink')

Delay.create(name: 'late', description: 'signal delays', subway_id: 1)
Delay.create(name: 'trash', description: 'trash on the rail', subway_id: 2)
Delay.create(name: 'death', description: 'suicide by train', subway_id: 3)
Delay.create(name: 'emergency', description: 'backpack bomb', subway_id: 4)
Delay.create(name: 'union', description: 'strike', subway_id: 5)
