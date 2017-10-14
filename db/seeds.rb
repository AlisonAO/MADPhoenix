# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create!(first_name: "Judy", last_name: "Kahn", email: "someone@hotmail.com", password: "something")
u2 = User.create!(first_name: "Mel", last_name: "Gibson", email: "someoneelse@sparta.com", password: "stuffone")
u3 = User.create!(first_name: "Sorrow", last_name: "Sadness", email: "help@hotmail.com", password: "password", admin: true)


Project.create!(title: "project1", creator: "greg", image: "https://upload.wikimedia.org/wikipedia/en/2/27/The_Project_Title_Card.jpg", description: "This is a project probably", readme: "I made this", embedd: "", tags: "PROJECT 1", user_id: u1.id)
Project.create!(title: "project2", creator: "Bobby", image: "https://upload.wikimedia.org/wikipedia/en/2/27/The_Project_Title_Card.jpg", description: "This is a project probably", readme: "I made this", embedd: "", tags: "PROJECT 2", user_id: u2.id)

