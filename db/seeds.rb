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


review1 = Review.create(reviewer_name: "John", review_title: "Tons of fun!", movie_id: 3, rating: 5, comments: "I really loved this movie! I've always loved the Beatles music & this was a really unique way to feature it & show it's importance to our culture.")
review2 = Review.create(reviewer_name: "Movie Geek", review_title: "Best movie ever!!", movie_id: 1, rating: 5, comments: "I've seen all of the Spiderman movies & this is by far my favorite!! Great characters & story. I've already seen it twice!! Everyone will love it!")
review3 = Review.create(reviewer_name: "Mary", review_title: "Fun for whole family", movie_id: 2, rating: 4, comments: "This movie is great for the kids, but kind of scary! We really enjoyed it but little kids might be afraid. I loved the music and seeing it as live action instead of animated was cool. Simba was super-cute!")