# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i| 
    Author.create(
        name: Faker::Book.author
    )
    puts "created #{i +1} author"
end 
Author.create(name: "Alex")

20.times do |i|
    Book.create(
        title: Faker::Book.title,
        description: Faker::TvShows::Seinfeld.quote,
        author_id: rand(1..5)
    )
    puts puts "created #{i +1} book"
end
Book.create( 
    title: "Being awesome at your job",
    description: "Imagine being so great that you write bonus lessons",
    author_id: 6
)