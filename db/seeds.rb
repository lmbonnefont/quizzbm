# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Employee.destroy_all

User.create!(email: "jeanbon@gmail.com", password: "123456")

lm = Employee.create!(name: "Bonnefont", surname:"LM", position:"PO", summary: "Bon gars sur")
lm.remote_photo_url = "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Flickr_-_nicogenin_-_66%C3%A8me_Festival_de_Venise_%28Mostra%29_-_Sylvester_Stallone_%2826%29.jpg/220px-Flickr_-_nicogenin_-_66%C3%A8me_Festival_de_Venise_%28Mostra%29_-_Sylvester_Stallone_%2826%29.jpg"
lm.save!

