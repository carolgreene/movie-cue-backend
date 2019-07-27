# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
spiderman = Movie.create(title: "Spiderman-Far From Home", genre: "adventure", rating: "PG-13", description: "A funfilled adventure with our hero saving the day!", runtime: 130)
lion_king = Movie.create(title: "The Lion King", genre: "adventure", rating: "PG", description: "Remake of disney classic", runtime: 110)
yesterday = Movie.create(title: "Yesterday", genre: "comedy", rating: "PG-13", description: "Guy wakes up and is in a world where nobody ever heard of the beatles. Only he knows their songs!", runtime: 112)

