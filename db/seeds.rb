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



tony = Employee.create!(name: "Hagnere", surname: "Tony", position: "Head of product", summary:"Le boss", remote_photo_url: "https://trello-attachments.s3.amazonaws.com/5a21d3de988adb77a283b703/5a21eb01b9ce0095215830bb/9be43cd1de685e63509380be84c05291/Capture_d%E2%80%99%C3%A9cran_2017-12-07_%C3%A0_11.39.01.png")
lm = Employee.create!(name: "Bonnefont", surname: "LM", position: "PO", summary:"Le jeuno", remote_photo_url: "https://trello-attachments.s3.amazonaws.com/5a21d3de988adb77a283b703/5b4867997af98564e92beb8c/e7002909b8899dd581f00849fd2f8ba6/Photo_Backmarket_marrante.jpg")
adri = Employee.create!(name: "Moison", surname: "Adri", position: "PO", summary:"Le seducteur", remote_photo_url: "https://media.licdn.com/dms/image/C5603AQEago5e5XzHgA/profile-displayphoto-shrink_200_200/0?e=1561593600&v=beta&t=DEeyJ8gigKqtfOI0kT0kDIwg6MaYN3e-gXoo1D-VFHM")
pold = Employee.create!(name: "Pacquemet", surname: "Poldy", position: "PO", summary:"Le chouchou", remote_photo_url: "https://trello-attachments.s3.amazonaws.com/5a21d3de988adb77a283b703/5a21eb093ebdb930252af2d8/6972e3597efe83e16a8bbe93022545cf/L%C3%A9opold-aujourd_hui.jpg")
pierre = Employee.create!(name: "Gaucher", surname: "Pierre", position: "PO", summary:"L'experience", remote_photo_url: "https://trello-attachments.s3.amazonaws.com/5a21d3de988adb77a283b703/5c630012f065046ec4d51d8a/cb1838c8febbb4d767ce153287108b11/PhotoMaintenant_PierreGAUCHER.png")
valoche = Employee.create!(name: "Lacombe", surname: "Valéry", position: "PO", summary:"Le DJ", remote_photo_url: "https://trello-attachments.s3.amazonaws.com/5a21d3de988adb77a283b703/5b1e3bc595afe2e0cbb9b8ad/32dbb90b1324200ea04d97884a821930/IMG_0196.jpg")
praty = Employee.create!(name: "Praty", surname: "David", position: "Product designer", summary:"Le chauve", remote_photo_url: "https://trello-attachments.s3.amazonaws.com/5a21d3de988adb77a283b703/5bfc0ddf49be4717f2840529/670ba6c6d11c0f7547e989cd2f9304e5/David_Prati.jpg")
waza = Employee.create!(name: "Waza", surname: "Alex", position: "Product designer", summary:"Insane man", remote_photo_url: "https://trello-attachments.s3.amazonaws.com/5a21d3de988adb77a283b703/5a21e71d060eebdbe709e619/7c710ef3cc9ba33eb9e2159eb8943f28/bim.jpg")
nassima = Employee.create!(name: "Ouharani", surname: "Nassima", position: "Product designer", summary:"Nass Nass", remote_photo_url: "https://trello-attachments.s3.amazonaws.com/5c618e184ff7b9772c7bb77f/387x395/3c46730f127f5114bb673f3b58174b3a/Nassima.jpg")


Question.create!(label: "Who finished a night full of alcohol in Lithuania with my band in a basement surrounded by many girls and a Russian mafia guy (and I managed to escape before anything weird happen) #Hostel", correct_answer: tony)
Question.create!(label: "When I was 7, at the end of the year’s school, there was a party and we were supposed to sing in front of all our parents. I was nervous, and I don’t know why, I took the mic, and say “Hello… jerks.”. Parents booed me, and after the song I was so ashamed I ran away for the entire day. ", correct_answer: praty)
Question.create!(label: "The very first day of my one-week Mexico travel, I get red and burned like you could rarely see this, I had to spend the rest of the trip under an umbrella.", correct_answer: valoche)
Question.create!(label: "Who has been in a reality show ?", correct_answer: waza)
Question.create!(label: "Who is called La Rouquine?", correct_answer: pold)
Question.create!(label: "I was planning on spending a quiet evening, then I ended up playing an epic FIFA game with former prime minister JP Raffarin at a Johnny Hallyday concert in Bercy.", correct_answer: pierre)

