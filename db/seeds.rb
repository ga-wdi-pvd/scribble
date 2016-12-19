# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Todo.destroy_all
Todo.create([
  {body: "finish WDI", author: "author1", completed: false},
  {body: "Get a job", author: "author2", completed: false},
  {body: "learn rails", author: "author3", completed: true},
  {body: "learn jQuery", author: "author4", completed: true}
])
