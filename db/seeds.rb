# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Fighter.create(username: "belle", weightclass: "feather weight", cellnum: 2, details: "kung-fu", image: "work" )

Fighter.create(username: "leo", weightclass: "feather weight", cellnum: 4, details: "judo", image: "please" )

Fight.create(fighter_id: 1, fightee_id: 2, wage: 300)

puts "SEEDED 🌰🥜🥜🌰🌰🌰🥜💪🏾"