# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Comment.destroy_all
Comment.create([
  {body: "Hello World", author: "author3"},
  {body: "Whats Up World", author: "author5"},
  {body: "Sup Dudes", author: "author2"}, 
  {body: "Yo Yo Yo", author: "author3"},
])

Post.destroy_all
Post.create([
  {body: "finish WDI", author: "author1" },
  {body: "Get a job", author: "author2" },
  {body: "learn rails", author: "author3" },
  {body: "learn jQuery", author: "author4" }
])
