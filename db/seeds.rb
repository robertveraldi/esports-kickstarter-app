# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(
  name: "Joe",
  email: "joe@test.com",
  password: "password",
  image: "img.jpeg",
)

User.create!(
  name: "bob",
  email: "bob@test.com",
  password: "password",
  image: "img.jpeg",
)

User.create!(
  name: "jim",
  email: "jim@test.com",
  password: "password",
  image: "img.jpeg",
)

Project.create!(
    title: "Faze",
    description: "This is Faze clan.",
    goal_amount: 10000,
    start_date: Date.parse('10-01-2022', '%m-%d-%Y'),
    end_date: Date.parse('10-01-2030', '%m-%d-%Y'),
)

Project.create!(
    title: "Hype",
    description: "This is Hype clan.",
    goal_amount: 20000,
    start_date: Date.parse('10-15-2022', '%m-%d-%Y'),
    end_date: Date.parse('10-15-2031', '%m-%d-%Y'),
)

Category.create!(
    name: "Call of Duty",
)

Category.create!(
    name: "Apex",
)

Category.create!(
    name: "Fortnite",
)

Category.create!(
    name: "Minecraft",
)

Category.create!(
    name: "Madden",
)

ProjectCategories.create!(
    project_id: 1,
    category_id: 2,
)

ProjectCategories.create!(
    project_id: 1,
    category_id: 4,
)

ProjectCategories.create!(
    project_id: 2,
    category_id: 1,
)

ProjectCategories.create!(
    project_id: 2,
    category_id: 3,
)

Tier.create!(
    project_id: 1,
    description: "The tier 1 for Faze clan allows you to receive a swag bag after each event!",
    amount: 100.00,
    limit: 1000,
    delivery_date: Date.parse('01-01-2023', '%m-%d-%Y'),    
)

Tier.create!(
    project_id: 1,
    description: "The tier 2 for Faze clan allows you to receive tickets to each Faze clan esporting event!",
    amount: 1000.00,
    limit: 100,
    delivery_date: Date.parse('01-01-2023', '%m-%d-%Y'),    
)

Tier.create!(
    project_id: 1,
    description: "The tier 3 for Faze clan allows you meet the Faze clan members after each event!",
    amount: 10000.00,
    limit: 10,
    delivery_date: Date.parse('01-01-2023', '%m-%d-%Y'),
)

Tier.create!(
    project_id: 2,
    description: "The tier 1 for Hype clan allows you to receive a swag bag after each event!",
    amount: 50.00,
    limit: 5000,
    delivery_date: Date.parse('01-01-2023', '%m-%d-%Y'),
)

Tier.create!(
    project_id: 2,
    description: "The tier 2 for Hype clan allows you to receive rickets to each Hype clan esporting event!",
    amount: 500.00,
    limit: 500,
    delivery_date: Date.parse('01-01-2023', '%m-%d-%Y'),  
)

Tier.create!(
    project_id: 2,
    description: "The tier 3 for Hype clan allows you to meet the members of Hype clan after each event!",
    amount: 5000.00,
    limit: 50,
    delivery_date: Date.parse('01-01-2023', '%m-%d-%Y'),
)

Pledge.create!(
    user_id: 1,
    project_id: 1,
)

Pledge.create!(
    user_id: 2,
    project_id: 2,
)

Pledge.create!(
    user_id: 3,
    project_id: 1,
)

Pledge.create!(
    user_id: 3,
    project_id: 2,
)