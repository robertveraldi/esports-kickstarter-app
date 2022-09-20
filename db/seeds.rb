# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# User.create!(
#   name: "Joe",
#   email: "joe@test.com",
#   password: "password",
#   image: "img.jpeg",
# )

# User.create!(
#   name: "bob",
#   email: "bob@test.com",
#   password: "password",
#   image: "img.jpeg",
# )

# User.create!(
#   name: "jim",
#   email: "jim@test.com",
#   password: "password",
#   image: "img.jpeg",
# )

Project.create!(
    title: "Faze",
    description: "This is Faze clan.",
    goal_amount: 10000,
    start_date: 10/01/2022,
    end_date: 11/01/2022,
)

# Project.create!(
#   title: "Faze",
#   description: "This is Faze clan.",
#   goal_amount: 10000,
#   start_date: 10/01/2022,
#   end_date: 11/01/2022,
# )