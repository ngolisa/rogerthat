# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts "begin seed"
Lesson.destroy_all
Notion.destroy_all
User.destroy_all

teacher = User.create(email: "roger@federer.com", password: '123456', teacher: true)
student = User.create(email: "novak@djoko", password: '123456')

coupdroit = Notion.create!(name: "Coup droit", description: "test", user: teacher)
revers = Notion.create!(name: "Revers", description: "test", user: teacher)
service = Notion.create!(name: "Service", description: "test", user: teacher)
smash = Notion.create!(name: "Smash", description: "test", user: teacher)

Lesson.create!(teacher: teacher, student: student, notion: smash, date: DateTime.new(2019,9,2,8))

puts "Seed done!"


