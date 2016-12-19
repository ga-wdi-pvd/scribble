# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Post.destroy_all
Post.create([
  {body: "What are vegetarians motivations?"},
  {body: "Earned income vs passive income: pros and cons"},
  {body: "Girls suck"}
])

Comment.destroy_all
Comment.create([
  {body: "Vegetarians help the envoronment!", post_id: 5},
  {body: "Earned income is for suckers!", post_id: 6}
])
