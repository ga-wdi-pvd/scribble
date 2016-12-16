# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

post = Post.create(
  title: 'Test Post!',
  body: 'This is an awesome test post! Please leave some comments!'
)

Comment.create([{
    body: 'in b4 ppl talking about how amazing this post is',
    post: post
  },
  {
    body: 'Wow, what an amazing post.',
    post: post
  }])
