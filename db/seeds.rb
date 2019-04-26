# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Question.destroy_all
Employee.destroy_all

User.create!(email: "jeanbon@gmail.com", password: "123456")



Employee.create!(name: "Hagnere", surname: "Tony", position: "Head of product", summary:"Le boss", remote_photo_url: "https://source.unsplash.com/random")
Employee.create!(name: "Bonnefont", surname: "LM", position: "PO", summary:"Le jeuno", remote_photo_url: "https://source.unsplash.com/random")
Employee.create!(name: "Moison", surname: "Adri", position: "PO", summary:"Le seducteur", remote_photo_url: "https://source.unsplash.com/random")
Employee.create!(name: "Pacquemet", surname: "Poldy", position: "PO", summary:"Le chouchou", remote_photo_url: "https://source.unsplash.com/random")
Employee.create!(name: "Gaucher", surname: "Pierre", position: "PO", summary:"L'experience", remote_photo_url: "https://source.unsplash.com/random")
Employee.create!(name: "Lacombe", surname: "Valéry", position: "PO", summary:"Le DJ", remote_photo_url: "https://source.unsplash.com/random")


Question.create!(label: "Qui a visé la lune ?", correct_answer: Employee.last)
Question.create!(label: "Qui a volé l'orange ?", correct_answer: Employee.first)
Question.create!(label: "Qui a le droit ?", correct_answer: Employee.second)
