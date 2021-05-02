# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Fighter.create(username: "LoganPaul", weightclass: "feather weight", cellnum: 2, details: "MMA", image: "https://sportshub.cbsistatic.com/i/r/2019/11/09/5714176a-0096-4c1a-875e-1b6ae4176827/thumbnail/1200x675/12c69f60f4e902d33ccc5648d39936e9/logan-paul.jpg",password_digest: "abc123" )

fighter1= Fighter.create(username: "LoganPaul", weightclass: "feather weight", cellnum: 2, details: "MMA", image: "https://sportshub.cbsistatic.com/i/r/2019/11/09/5714176a-0096-4c1a-875e-1b6ae4176827/thumbnail/1200x675/12c69f60f4e902d33ccc5648d39936e9/logan-paul.jpg",password_digest: "abc123" )

Fighter.create(username: "JakePaul", weightclass: "feather weight", cellnum: 4, details: "judo", image: "https://sportshub.cbsistatic.com/i/r/2021/04/17/330804e2-5ea0-4d26-b19e-2c1656ce82f1/thumbnail/1200x675/a89e6bd070272a9f2392a061618bae94/jake-paul-weighin.jpg",password_digest: "abc123" )
Fighter.create(username: "BobbyLashely", weightclass: "Heavy weight", cellnum: 987654434, details: "judo", image: "https://img.bleacherreport.net/img/images/photos/003/871/485/hi-res-900b785ab37795c15f2b09c8d33bf8b4_crop_north.jpg?1591465332&w=3072&h=2048",password_digest: "abc123")

Fight.create(fighter_id: 1, fightee_id: 2, wage: 300)
Fight.create(fighter_id: 3, fightee_id: 5, wage: 100000)


puts "SEEDED 🌰🥜🥜🌰🌰🌰🥜💪🏾"
