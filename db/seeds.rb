# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "begin seed"
puts "destroying lessons"
Lesson.destroy_all
puts "destroying notions"
Notion.destroy_all
puts "destroying users"
User.destroy_all

teacher = User.new(email: "roger@federer.com", password: '123456', teacher: true, first_name: 'Roger', last_name: 'Federer')
url = "https://cdn.images.express.co.uk/img/dynamic/72/590x/Roger-Federer-1169347.jpg?r=1566587000376"
teacher.remote_avatar_url = url
teacher.save

student = User.new(email: "novak@djoko", password: '123456')
url = "https://www.tennisworldusa.org/imgb/80786/atp-us-open-novak-djokovic-downs-carballes-baena-to-open-title-defense.jpg"
student.remote_avatar_url = url
student.save

coupdroit = Notion.create!(name: "Coup droit", description: "test", user: teacher)
revers = Notion.create!(name: "Revers", description: "test", user: teacher)
service = Notion.create!(name: "Service", description: "test", user: teacher)
smash = Notion.create!(name: "Smash", description: "test", user: teacher)

Lesson.create!(teacher: teacher, student: student, notion: smash, date: DateTime.new(2019,9,2,8))

puts "Seed done!"


