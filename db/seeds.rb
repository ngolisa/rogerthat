# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "begin seed"
Review.destroy_all
puts "destroying lessons"
Lesson.destroy_all
puts "destroying notions"
Notion.destroy_all
puts "destroying users"
User.destroy_all
puts "finish"
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
photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1566997054/2018-07-07-22.21.09_nor9m6.png"
video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088445/Coup_droit_muuzjj.mp4"
coupdroit1 = Notion.create!(
  name: "Le Coup Droit - Comment frapper en avançant",
  user: arthur,
  remote_video_url: video,
  remote_photo_url: photo,
  description:  "Le coup droit est le coup le plus connu du tennis avec le service. Pourquoi ? Parce qu’il est naturellement effectué par les joueurs qu’ils soient débutants ou experts.
Tous les joueurs ont la facilité d’effectuer ce coup. Mais avant toute chose, reprenons les bases du coup droit croisé en 5 points clés.

La main libre doit aider à amener la raquette derrière ce qui permet la rotation des épaules.

S’organiser assez vite pour que la fin de préparation se fasse au plus tard au rebond de la balle.

Prise d’appui en ligne, semi-ouvert ou ouvert, en fonction de votre préférence.

Descente de la tête de raquette en dessous du niveau de la balle.

En avant du corps, entre épaules et hanches, et coude décollé du corps (plus vous avez une prise fermée plus le plan de frappe doit être en avant !).

Pour un coup droit croisé, le plan de frappe doit obligatoirement être devant.

Vers le haut et l’avant, le passage du coude doit entraîner le passage de l’épaule et seulement après le passage de l’appui arrière.",
  )

photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1566997159/Nadal-pr_C3_A9paration-modele-de-coup-droit-par-mirsasha_th7gui.jpg"
video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1566999531/Rafa_forehand_nqwdwk.mp4"
coupdroit2 = Notion.create!(
  name: "Le Coup Droit - Le timing de la frappe",
  user: arthur,
  remote_video_url: video,
  remote_photo_url: photo,
  description: "Le coup droit est le coup le plus connu du tennis avec le service. Pourquoi ? Parce qu’il est naturellement effectué par les joueurs qu’ils soient débutants ou experts.
Tous les joueurs ont la facilité d’effectuer ce coup. Mais avant toute chose, reprenons les bases du coup droit croisé en 5 points clés.

La main libre doit aider à amener la raquette derrière ce qui permet la rotation des épaules.

S’organiser assez vite pour que la fin de préparation se fasse au plus tard au rebond de la balle.

Prise d’appui en ligne, semi-ouvert ou ouvert, en fonction de votre préférence.

Descente de la tête de raquette en dessous du niveau de la balle.

En avant du corps, entre épaules et hanches, et coude décollé du corps (plus vous avez une prise fermée plus le plan de frappe doit être en avant !).

Pour un coup droit croisé, le plan de frappe doit obligatoirement être devant.

Vers le haut et l’avant, le passage du coude doit entraîner le passage de l’épaule et seulement après le passage de l’appui arrière."
  )

video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1566997867/Roger_Federer_Forehand_Slow_Motion_2019_-_Fluid_Relaxation_hd_pvzjie.mp4"
coupdroit3 = Notion.create!(
  name: "Le Coup Droit - Comment se servir des jambes",
  description: "test", user: roger,
  remote_video_url: video,
  remote_photo_url: photo,
  )

photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1566997212/2607023-54039177-1600-900_zvjlpe.jpg"
video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1566997333/Advanced_Tennis_Backhand_-_Drills_2__3_Lifting_The_Ball_xbdfxz.mp4"
revers1 = Notion.create!(
  name: "Le Revers - Comment lifter",
  user: arthur,
  remote_video_url: video,
  remote_photo_url: photo,
  description: "Le revers comme arme d’attaque

Pour beaucoup de joueurs, il n’est que le coup neutre qui permet au mieux de repousser l’adversaire, au pire celui qui permet de simplement remettre la balle dans le court.
Pourtant, même si le revers d’attaque est difficile à réaliser, il n’en est pas moins surprenant et peut se révéler une arme redoutable.

REVERS D'ATTAQUE : « JE ME DÉCALE OU PAS ? »
L’envie de se décaler lorsqu’une balle assez haute arrive vous démange ? Et c’est normal, mais est ce vraiment le bon moment ? Votre revers peut faire la différence.

Attention cependant aux balles dites “cotonneuses” sans vitesse et sans poids, ne vous précipitez pas !
Préférez un revers lifté long et précis (voir “Le revers lifté”) afin d’obtenir une balle un peu plus consistante et qui vous permettra d’attaquer.
Accélérez une balle haute, au dessus de votre épaule en revers est extrêmement compliqué car il faut bien souvent réalisé un revers sauté où il est difficile de mettre du poids dans la balle et de la vitesse. (Voir “Le revers sauté”). Attendez donc une balle plus propice."

  )
photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1566997454/2602433-53947377-1600-900_q2z8ck.jpg"
revers2 = Notion.create!(
  name: "Le Revers - Petit slice des familles",
  description: "test",
  remote_video_url: video,
  remote_photo_url: photo,
  user: roger
  )

photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1566997212/2607023-54039177-1600-900_zvjlpe.jpg"
revers3 = Notion.create!(
  name: "Le Revers- Plutôt une main ou deux mains ?",
  remote_video_url: video,
  remote_photo_url: photo,
  user: roger
  )

photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567071418/maxresdefault_gyhvch.jpg"
service1 = Notion.create!(
  name: "Service - Comment faire un service au tennis ",
  remote_video_url: video,
  remote_photo_url: photo,
  user: arthur
  )

photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567071418/maxresdefault_gyhvch.jpg"
service2 = Notion.create!(
  name: "Service - Gagner 30 km/h en vitesse",
  remote_video_url: video,
  remote_photo_url: photo,
  user: arthur
  )

photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1566997522/t1larg.rfroar.gi_xuzida.jpg"
video = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1566998670/roger-federer-mental-conseil-carriere-min_uo30nc.jpg"
mental1 = Notion.create!(
  name: "Le Mental - Se mettre dans de bonnes conditions en rentrant sur le terrain",
  description: "test",
  remote_photo_url: photo,
  user: roger
  )

photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567069326/102668770_o_dgfolj.jpg"
video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088636/Echauffement_px56el.mp4"
mental2 = Notion.create!(
  name: "Avant un match - Comment bien s'échauffer ",
  remote_photo_url: photo,
  description: "test",
  user: roger
  )

# Lesson:

Lesson.create!(teacher: roger, student: novak, notion: revers2, date: DateTime.new(2019,9,2,8))
Lesson.create!(teacher: roger, student: novak, notion: coupdroit2, date: DateTime.new(2019,9,2,8))
Lesson.create!(teacher: arthur, student: hector, notion: coupdroit1, date: DateTime.new(2019,9,3,8))
Lesson.create!(teacher: arthur, student: hector, notion: service1, date: DateTime.new(2019,9,3,9))
Lesson.create!(teacher: arthur, student: hector, notion: mental1, date: DateTime.new(2019,9,3,9))

puts "Seed done!"


