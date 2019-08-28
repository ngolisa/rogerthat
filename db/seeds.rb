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

# Teachers:

roger = User.new(email: "rogerfederer@gmail.com", password: '123456', teacher: true, first_name: 'Roger', last_name: 'Federer')
url = "https://cdn.images.express.co.uk/img/dynamic/72/590x/Roger-Federer-1169347.jpg?r=1566587000376"
roger.remote_avatar_url = url
roger.save


arthur = User.new(email: "arthur75@gmail.com", password: '123456', teacher: true, first_name: 'Arthur', last_name: 'Marie')
url = "https://avatars3.githubusercontent.com/u/48946450?v=4"
arthur.remote_avatar_url = url
arthur.save

# Students:

novak = User.new(email: "novakdejokovic@gmail.com", password: '123456')
url = "https://www.tennisworldusa.org/imgb/80786/atp-us-open-novak-djokovic-downs-carballes-baena-to-open-title-defense.jpg"
novak.remote_avatar_url = url
novak.save

hector = User.new(email: "hector75@gmail.com", password: '123456')
url = "https://avatars0.githubusercontent.com/u/51796377?v=4"
hector.remote_avatar_url = url
hector.save

# Notions:

coupdroit1 = Notion.create!(name: "Le Coup Droit - Comment frapper en avançant", user: arthur, video: "")
coupdroit1.description = "La gestuelle du bras qui frappe la balle vers l'avant est quasi innée. Si c’est le coup fort de la majorité des joueurs de tennis, il n’est pour autant pas maîtrisé techniquement par tout le monde. Nous vous proposons de décortiquer le geste, la prise et la préparation afin d’améliorer votre coup droit et en faire une arme fatale.

TRANSFORMEZ VOTRE COUP DROIT EN ARME FATALE
Donner une gifle en coup droit ! Tous les joueurs de tennis rêvent de pouvoir le faire sur le terrain et de lever les bras, victorieux.

Avant tout chose, il convient de faire attention à la technique de base de votre coup droit, sans laquelle vous ne pourrez pas prendre de plaisir à frapper la petite balle jaune.

Damien Caby, notre coach partenaire et Nicolas Escudé, notre partenaire technique, vous proposent donc de découvrir en vidéo leurs conseils qui vous permettront de progresser, corriger vos défauts et prendre conscience de vos faiblesses afin de déterminer comment améliorer votre coup droit."


coupdroit1.photo ="https://res.cloudinary.com/dkblfugfl/image/upload/v1566988293/roger_wo0bmd.jpg"

coupdroit2 = Notion.create!(name: "Le Coup Droit - Le timing de la frappe", description: "test", user: arthur)
coupdroit2.description = "Le coup droit est le coup le plus connu du tennis avec le service. Pourquoi ? Parce qu’il est naturellement effectué par les joueurs qu’ils soient débutants ou experts.
Tous les joueurs ont la facilité d’effectuer ce coup. Mais avant toute chose, reprenons les bases du coup droit croisé en 5 points clés.

La main libre doit aider à amener la raquette derrière ce qui permet la rotation des épaules.

S’organiser assez vite pour que la fin de préparation se fasse au plus tard au rebond de la balle.

Prise d’appui en ligne, semi-ouvert ou ouvert, en fonction de votre préférence.

Descente de la tête de raquette en dessous du niveau de la balle.

En avant du corps, entre épaules et hanches, et coude décollé du corps (plus vous avez une prise fermée plus le plan de frappe doit être en avant !).

Pour un coup droit croisé, le plan de frappe doit obligatoirement être devant.

Vers le haut et l’avant, le passage du coude doit entraîner le passage de l’épaule et seulement après le passage de l’appui arrière."

coupdroit2.video = ""

coupdroit3 = Notion.create!(name: "Le Coup Droit - Comment se servir des jambes", description: "test", user: roger)

revers1 = Notion.create!(name: "Le Revers - Comment lifter", description: "test", user: arthur)
revers1.description = ""
revers1.video = ""

revers2 = Notion.create!(name: "Le Revers - Petit slice des familles", description: "test", user: roger)
revers2.description = ""
revers2.photo = "https://res.cloudinary.com/dkblfugfl/image/upload/v1566988389/nadal_a4qpui.jpg"

revers3 = Notion.create!(name: "Le Revers- Plutôt une main ou deux mains ?", description: "test", user: roger)

service1 = Notion.create!(name: "Service - Comment faire un service au tennis ", description: "test", user: arthur)
service2 = Notion.create!(name: "Service - Gagner 30 km/h en vitesse", description: "test", user: arthur)

smash1 = Notion.create!(name: "Smash - Comment réaliser un bon smash", description: "test", user: roger)
smash2 = Notion.create!(name: "Smash - Équilibre des jambes", description: "test", user: roger)

mental1 = Notion.create!(name: "Le Mental - Se mettre dans de bonnes conditions en rentrant sur le terrain", description: "test", user: roger)
mental1.video = ""
mental1.photo ="https://res.cloudinary.com/dkblfugfl/image/upload/v1566988481/federer-roger-050919_outqns.jpg"

mental2 = Notion.create!(name: "Le Mental - S'entrainer à penser positif", description: "test", user: roger)

# Lesson:

Lesson.create!(teacher: roger, student: novak, notion: revers2, date: DateTime.new(2019,9,2,8))
Lesson.create!(teacher: roger, student: novak, notion: coupdroit2, date: DateTime.new(2019,9,2,8))
Lesson.create!(teacher: arthur, student: hector, notion: coupdroit1, date: DateTime.new(2019,9,3,8))
Lesson.create!(teacher: arthur, student: hector, notion: service1, date: DateTime.new(2019,9,3,9))
Lesson.create!(teacher: arthur, student: hector, notion: mental1, date: DateTime.new(2019,9,3,9))

puts "Seed done!"


