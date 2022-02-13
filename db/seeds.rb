# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


user1 = User.create!(
  name: "Josh Lim",
  email: "josh@gmail.com",
  password: "password"
)

user2 = User.create!(
  name: "Linda H",
  email: "linda@gmail.com",
  password: "password"
)

# post1 = Post.create!(
#   message: "this is a sweet post",
#   image: File.open(Rails.root + '/app/assets/images/Img_1.jpeg'),
#   user_id: 1
# )

