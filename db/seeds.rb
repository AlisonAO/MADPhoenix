# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


u1 = User.create!(email: "someone@hotmail.com", password: "something")
u2 = User.create!(email: "someoneelse@sparta.com", password: "stuffone")


p1 = Project.create!(title: "project1", creator: "greg", image: "https://upload.wikimedia.org/wikipedia/en/2/27/The_Project_Title_Card.jpg", description: "This is a project probably", readme: "I made this", embedd: "", tags: "PROJECT 1")
p2 = Project.create!(title: "project2", creator: "Bobby", image: "https://upload.wikimedia.org/wikipedia/en/2/27/The_Project_Title_Card.jpg", description: "This is a project probably", readme: "I made this", embedd: "", tags: "PROJECT 2")

UserProject.create!(user_id: u1.id, project_id: p1.id)
UserProject.create!(user_id: u2.id, project_id: p1.id)
UserProject.create!(user_id: u2.id, project_id: p2.id)