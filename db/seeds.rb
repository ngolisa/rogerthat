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
Category.destroy_all
puts "destroying users"
User.destroy_all
puts "finish"


# Category------------------------------------------------------------------

coupdroit = Category.create(name: "Coup Droit")
revers = Category.create(name: "Revers")
echauffement = Category.create(name: "Échauffement")
service = Category.create(name: "Service")


# Teachers------------------------------------------------------------------

roger = User.new(
  email: "rogerfederer@gmail.com",
  password: '123456',
  teacher: true,
  first_name: 'Roger',
  last_name: 'Federer'
  )

url = "https://cdn.images.express.co.uk/img/dynamic/72/590x/Roger-Federer-1169347.jpg?r=1566587000376"
roger.remote_avatar_url = url
roger.save

arthur = User.new(
  email: "arthur75@gmail.com",
  password: '123456',
  teacher: true,
  first_name: 'Arthur',
  last_name: 'Marie'
  )

url = "https://avatars3.githubusercontent.com/u/48946450?v=4"
arthur.remote_avatar_url = url
arthur.save

# Students--------------------------------------------------------------------

novak = User.new(
  email: "novakdejokovic@gmail.com",
  password: '123456',
  first_name: 'Novak',
  last_name: 'Djokovic'
  )
url = "https://www.tennisworldusa.org/imgb/80786/atp-us-open-novak-djokovic-downs-carballes-baena-to-open-title-defense.jpg"
novak.remote_avatar_url = url
novak.save

hector = User.new(
  email: "hector75@gmail.com",
  password: '123456',
  first_name: 'Hector',
  last_name: 'Bonvallot'
  )
url = "https://avatars0.githubusercontent.com/u/51796377?v=4"
hector.remote_avatar_url = url
hector.save

elisabeth = User.new(
  email: "elisabeth75@gmail.com",
  password: '123456',
  first_name: 'Elisabeth',
  last_name: 'Lacour'
  )
url = "https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/vnpbitl1cj7pf7wbg0mo.jpg"
elisabeth.remote_avatar_url = url
elisabeth.save



# ALL Notions-----------------------------------------------------------------------:
# Notion coup droit 1-------------------------------------------------------------------:

photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1566997054/2018-07-07-22.21.09_nor9m6.png"
video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088445/Coup_droit_muuzjj.mp4"
coupdroit1 = Notion.create!(
  name: "Comment frapper en avançant ?",
  user: arthur,
  category: coupdroit,
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

# Notion coup droit 2-------------------------------------------------------------------:

photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567437857/Coup%20droit/Simona_Halep__2815010841597_29_r20sgg.jpg"
video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1566997867/Roger_Federer_Forehand_Slow_Motion_2019_-_Fluid_Relaxation_hd_pvzjie.mp4"
coupdroit2 = Notion.create!(
  name: "Défendre en donnant de la longueur",
  description: "Le coup droit est le coup le plus connu du tennis avec le service. Pourquoi ? Parce qu’il est naturellement effectué par les joueurs qu’ils soient débutants ou experts.
Tous les joueurs ont la facilité d’effectuer ce coup. Mais avant toute chose, reprenons les bases du coup droit croisé en 5 points clés.

La main libre doit aider à amener la raquette derrière ce qui permet la rotation des épaules.

S’organiser assez vite pour que la fin de préparation se fasse au plus tard au rebond de la balle.",
  user: arthur,
  category: coupdroit,
  remote_video_url: video,
  remote_photo_url: photo,
  )


# Notion coup droit 3-------------------------------------------------------------------:

photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1566997159/Nadal-pr_C3_A9paration-modele-de-coup-droit-par-mirsasha_th7gui.jpg"
video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1566999531/Rafa_forehand_nqwdwk.mp4"
coupdroit3 = Notion.create!(
  name: "Le timing à frappe",
  user: arthur,
  category: coupdroit,
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

# Notion coup droit 4-------------------------------------------------------------------:

photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567161627/maxresdefault_knni7y.jpg"
video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1566997867/Roger_Federer_Forehand_Slow_Motion_2019_-_Fluid_Relaxation_hd_pvzjie.mp4"
coupdroit4 = Notion.create!(
  name: "Comment se servir des jambes ? ",
  description: "Le coup droit est le coup le plus connu du tennis avec le service. Pourquoi ? Parce qu’il est naturellement effectué par les joueurs qu’ils soient débutants ou experts.
Tous les joueurs ont la facilité d’effectuer ce coup. Mais avant toute chose, reprenons les bases du coup droit croisé en 5 points clés.

La main libre doit aider à amener la raquette derrière ce qui permet la rotation des épaules.

S’organiser assez vite pour que la fin de préparation se fasse au plus tard au rebond de la balle.

Prise d’appui en ligne, semi-ouvert ou ouvert, en fonction de votre préférence.

Descente de la tête de raquette en dessous du niveau de la balle.

En avant du corps, entre épaules et hanches, et coude décollé du corps (plus vous avez une prise fermée plus le plan de frappe doit être en avant !).

Pour un coup droit croisé, le plan de frappe doit obligatoirement être devant.

Vers le haut et l’avant, le passage du coude doit entraîner le passage de l’épaule et seulement après le passage de l’appui arrière.",
  user: arthur,
  category: coupdroit,
  remote_video_url: video,
  remote_photo_url: photo,
  )

# Notion coup droit 5-------------------------------------------------------------------:

photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567435285/Coup%20droit/maxresdefault_rg5xrk.jpg"
video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1566997867/Roger_Federer_Forehand_Slow_Motion_2019_-_Fluid_Relaxation_hd_pvzjie.mp4"
coupdroit5 = Notion.create!(
  name: "Réussir son attaque",
  description: "Le coup droit est le coup le plus connu du tennis avec le service. Pourquoi ? Parce qu’il est naturellement effectué par les joueurs qu’ils soient débutants ou experts.
Tous les joueurs ont la facilité d’effectuer ce coup. Mais avant toute chose, reprenons les bases du coup droit croisé en 5 points clés.

La main libre doit aider à amener la raquette derrière ce qui permet la rotation des épaules.

S’organiser assez vite pour que la fin de préparation se fasse au plus tard au rebond de la balle.

Prise d’appui en ligne, semi-ouvert ou ouvert, en fonction de votre préférence.

Descente de la tête de raquette en dessous du niveau de la balle.

En avant du corps, entre épaules et hanches, et coude décollé du corps (plus vous avez une prise fermée plus le plan de frappe doit être en avant !).

Pour un coup droit croisé, le plan de frappe doit obligatoirement être devant.

Vers le haut et l’avant, le passage du coude doit entraîner le passage de l’épaule et seulement après le passage de l’appui arrière.",
  user: roger,
  category: coupdroit,
  remote_video_url: video,
  remote_photo_url: photo,
  )

# Notion coup droit 6-------------------------------------------------------------------:

photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567435334/Coup%20droit/gael-monfils-rogers-cup-hotshots_rhz2vi.jpg"
video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1566997867/Roger_Federer_Forehand_Slow_Motion_2019_-_Fluid_Relaxation_hd_pvzjie.mp4"
coupdroit6 = Notion.create!(
  name: "A quel moment faire l'amorti ?",
  description: "Le coup droit est le coup le plus connu du tennis avec le service. Pourquoi ? Parce qu’il est naturellement effectué par les joueurs qu’ils soient débutants ou experts.
Tous les joueurs ont la facilité d’effectuer ce coup. Mais avant toute chose, reprenons les bases du coup droit croisé en 5 points clés.

La main libre doit aider à amener la raquette derrière ce qui permet la rotation des épaules.

S’organiser assez vite pour que la fin de préparation se fasse au plus tard au rebond de la balle.

Prise d’appui en ligne, semi-ouvert ou ouvert, en fonction de votre préférence.

Descente de la tête de raquette en dessous du niveau de la balle.

En avant du corps, entre épaules et hanches, et coude décollé du corps (plus vous avez une prise fermée plus le plan de frappe doit être en avant !).

Pour un coup droit croisé, le plan de frappe doit obligatoirement être devant.

Vers le haut et l’avant, le passage du coude doit entraîner le passage de l’épaule et seulement après le passage de l’appui arrière.",
  user: arthur,
  category: coupdroit,
  remote_video_url: video,
  remote_photo_url: photo,
  )

# Notion Revers 1-------------------------------------------------------------------:

photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567438065/Revers/gnm0jt7ynadb9r2z3dh0.jpg"
video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088445/Coup_droit_muuzjj.mp4"
revers1 = Notion.create!(
  name: "Comment lifter et faire reculer l'adversaire ?",
  user: arthur,
  category: revers,
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
# Notion Revers 2-------------------------------------------------------------------:

video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088445/Coup_droit_muuzjj.mp4"
photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1566997454/2602433-53947377-1600-900_q2z8ck.jpg"
revers2 = Notion.create!(
  name: "Petit slice des familles",
  category: revers,
  description: "Le revers comme arme d’attaque
Pour beaucoup de joueurs, il n’est que le coup neutre qui permet au mieux de repousser l’adversaire, au pire celui qui permet de simplement remettre la balle dans le court.
Pourtant, même si le revers d’attaque est difficile à réaliser, il n’en est pas moins surprenant et peut se révéler une arme redoutable.

REVERS D'ATTAQUE : « JE ME DÉCALE OU PAS ? »
L’envie de se décaler lorsqu’une balle assez haute arrive vous démange ? Et c’est normal, mais est ce vraiment le bon moment ? Votre revers peut faire la différence.

Attention cependant aux balles dites “cotonneuses” sans vitesse et sans poids, ne vous précipitez pas !
Préférez un revers lifté long et précis (voir “Le revers lifté”) afin d’obtenir une balle un peu plus consistante et qui vous permettra d’attaquer.
Accélérez une balle haute, au dessus de votre épaule en revers est extrêmement compliqué car il faut bien souvent réalisé un revers sauté où il est difficile de mettre du poids dans la balle et de la vitesse. (Voir “Le revers sauté”). Attendez donc une balle plus propice.",
  remote_video_url: video,
  remote_photo_url: photo,
  user: arthur,
  )

# Notion Revers 3-------------------------------------------------------------------:

video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088445/Coup_droit_muuzjj.mp4"
photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1566997212/2607023-54039177-1600-900_zvjlpe.jpg"
revers3 = Notion.create!(
  name: "Plutôt une main ou deux mains ?",
  description: "Le revers comme arme d’attaque
Pour beaucoup de joueurs, il n’est que le coup neutre qui permet au mieux de repousser l’adversaire, au pire celui qui permet de simplement remettre la balle dans le court.
Pourtant, même si le revers d’attaque est difficile à réaliser, il n’en est pas moins surprenant et peut se révéler une arme redoutable.

REVERS D'ATTAQUE : « JE ME DÉCALE OU PAS ? »
L’envie de se décaler lorsqu’une balle assez haute arrive vous démange ? Et c’est normal, mais est ce vraiment le bon moment ? Votre revers peut faire la différence.

Attention cependant aux balles dites “cotonneuses” sans vitesse et sans poids, ne vous précipitez pas !
Préférez un revers lifté long et précis (voir “Le revers lifté”) afin d’obtenir une balle un peu plus consistante et qui vous permettra d’attaquer.
Accélérez une balle haute, au dessus de votre épaule en revers est extrêmement compliqué car il faut bien souvent réalisé un revers sauté où il est difficile de mettre du poids dans la balle et de la vitesse. (Voir “Le revers sauté”). Attendez donc une balle plus propice.",
  remote_video_url: video,
  remote_photo_url: photo,
  user: arthur,
  category: revers,
  )

# Notion Revers 4-------------------------------------------------------------------:

video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088445/Coup_droit_muuzjj.mp4"
photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567438270/Revers/Maria_SHARAPOVA_wqiobo.jpg"
revers4 = Notion.create!(
  name: "Comment défendre efficacement et avancer dans le terrain ?",
  description: "Le revers comme arme d’attaque
Pour beaucoup de joueurs, il n’est que le coup neutre qui permet au mieux de repousser l’adversaire, au pire celui qui permet de simplement remettre la balle dans le court.
Pourtant, même si le revers d’attaque est difficile à réaliser, il n’en est pas moins surprenant et peut se révéler une arme redoutable.

REVERS D'ATTAQUE : « JE ME DÉCALE OU PAS ? »
L’envie de se décaler lorsqu’une balle assez haute arrive vous démange ? Et c’est normal, mais est ce vraiment le bon moment ? Votre revers peut faire la différence.

Attention cependant aux balles dites “cotonneuses” sans vitesse et sans poids, ne vous précipitez pas !
Préférez un revers lifté long et précis (voir “Le revers lifté”) afin d’obtenir une balle un peu plus consistante et qui vous permettra d’attaquer.
Accélérez une balle haute, au dessus de votre épaule en revers est extrêmement compliqué car il faut bien souvent réalisé un revers sauté où il est difficile de mettre du poids dans la balle et de la vitesse. (Voir “Le revers sauté”). Attendez donc une balle plus propice.",
  remote_video_url: video,
  remote_photo_url: photo,
  user: arthur,
  category: revers,
  )

# Notion Revers 5-------------------------------------------------------------------:

video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088445/Coup_droit_muuzjj.mp4"
photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567438214/Revers/Andy_Murray_backhand_at_Wimbledon_gw8dij.jpg"
revers5 = Notion.create!(
  name: "Peut-on tenter l'amorti ?",
  description: "Le revers comme arme d’attaque
Pour beaucoup de joueurs, il n’est que le coup neutre qui permet au mieux de repousser l’adversaire, au pire celui qui permet de simplement remettre la balle dans le court.
Pourtant, même si le revers d’attaque est difficile à réaliser, il n’en est pas moins surprenant et peut se révéler une arme redoutable.

REVERS D'ATTAQUE : « JE ME DÉCALE OU PAS ? »
L’envie de se décaler lorsqu’une balle assez haute arrive vous démange ? Et c’est normal, mais est ce vraiment le bon moment ? Votre revers peut faire la différence.

Attention cependant aux balles dites “cotonneuses” sans vitesse et sans poids, ne vous précipitez pas !
Préférez un revers lifté long et précis (voir “Le revers lifté”) afin d’obtenir une balle un peu plus consistante et qui vous permettra d’attaquer.
Accélérez une balle haute, au dessus de votre épaule en revers est extrêmement compliqué car il faut bien souvent réalisé un revers sauté où il est difficile de mettre du poids dans la balle et de la vitesse. (Voir “Le revers sauté”). Attendez donc une balle plus propice.",
  remote_video_url: video,
  remote_photo_url: photo,
  user: arthur,
  category: revers,
  )

# Notion Revers 6-------------------------------------------------------------------:

video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088445/Coup_droit_muuzjj.mp4"
photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567435712/Revers/monfils-indian-wells-2019-wednesday-backhand_nqq8fk.jpg"
revers6 = Notion.create!(
  name: "Un revers comme Gael Monfils",
  description: "Le revers comme arme d’attaque
Pour beaucoup de joueurs, il n’est que le coup neutre qui permet au mieux de repousser l’adversaire, au pire celui qui permet de simplement remettre la balle dans le court.
Pourtant, même si le revers d’attaque est difficile à réaliser, il n’en est pas moins surprenant et peut se révéler une arme redoutable.

REVERS D'ATTAQUE : « JE ME DÉCALE OU PAS ? »
L’envie de se décaler lorsqu’une balle assez haute arrive vous démange ? Et c’est normal, mais est ce vraiment le bon moment ? Votre revers peut faire la différence.

Attention cependant aux balles dites “cotonneuses” sans vitesse et sans poids, ne vous précipitez pas !
Préférez un revers lifté long et précis (voir “Le revers lifté”) afin d’obtenir une balle un peu plus consistante et qui vous permettra d’attaquer.
Accélérez une balle haute, au dessus de votre épaule en revers est extrêmement compliqué car il faut bien souvent réalisé un revers sauté où il est difficile de mettre du poids dans la balle et de la vitesse. (Voir “Le revers sauté”). Attendez donc une balle plus propice.",
  remote_video_url: video,
  remote_photo_url: photo,
  user: arthur,
  category: revers,
  )

# Notion Service 1-------------------------------------------------------------------:

video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088445/Coup_droit_muuzjj.mp4"
photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567071418/maxresdefault_gyhvch.jpg"
service1 = Notion.create!(
  name: "Comment faire un service au tennis ?",
  description: "Choisissez une raquette de tennis qui convient à une personne de votre âge et de votre morphologie. Optez pour une raquette légère et ajoutez éventuellement de la bande de plomb en tête pour obtenir un meilleur contrôle. Les raquettes de tennis ont des surfaces de tamis qui sont comprises entre 630 et 645 cm2 pour des poids qui se situent entre 270 et 370 g. Il est toujours préférable de faire corder sa raquette (plutôt que de l'acheter avec un cordage déjà installé) en choisissant un type de cordage et une tension qui convient à votre style de jeu et à votre morphologie (force et puissance). Après avoir utilisé un cordage pendant de nombreuses séances de jeu, si vous sentez que vous contrôlez de moins en moins bien vos frappes de balle, envisagez de faire recorder votre raquette. Demandez des conseils à la personne qui corde votre raquette pour déterminer le type et la tension de cordage qui vous conviennent le mieux.",
  remote_video_url: video,
  remote_photo_url: photo,
  category: service,
  user: arthur
  )

# Notion Service 2-------------------------------------------------------------------:

video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088445/Coup_droit_muuzjj.mp4"
photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567438471/service/Maria_Sharapova_at_2009_Roland_Garros_2C_Paris_2C_France_velese.jpg"
service2 = Notion.create!(
  name: "Lifter pour faire reculer l'adversaire",
  description: "Choisissez une raquette de tennis qui convient à une personne de votre âge et de votre morphologie. Optez pour une raquette légère et ajoutez éventuellement de la bande de plomb en tête pour obtenir un meilleur contrôle. Les raquettes de tennis ont des surfaces de tamis qui sont comprises entre 630 et 645 cm2 pour des poids qui se situent entre 270 et 370 g. Il est toujours préférable de faire corder sa raquette (plutôt que de l'acheter avec un cordage déjà installé) en choisissant un type de cordage et une tension qui convient à votre style de jeu et à votre morphologie (force et puissance). Après avoir utilisé un cordage pendant de nombreuses séances de jeu, si vous sentez que vous contrôlez de moins en moins bien vos frappes de balle, envisagez de faire recorder votre raquette. Demandez des conseils à la personne qui corde votre raquette pour déterminer le type et la tension de cordage qui vous conviennent le mieux.",
  remote_video_url: video,
  remote_photo_url: photo,
  category: service,
  user: arthur
  )


# Notion Service 3-------------------------------------------------------------------:

video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088445/Coup_droit_muuzjj.mp4"
photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567435872/service/maxresdefault_h4jyrs.jpg"
service2 = Notion.create!(
  name: "Le slice, une arme fatal",
  description: "Choisissez une raquette de tennis qui convient à une personne de votre âge et de votre morphologie. Optez pour une raquette légère et ajoutez éventuellement de la bande de plomb en tête pour obtenir un meilleur contrôle. Les raquettes de tennis ont des surfaces de tamis qui sont comprises entre 630 et 645 cm2 pour des poids qui se situent entre 270 et 370 g. Il est toujours préférable de faire corder sa raquette (plutôt que de l'acheter avec un cordage déjà installé) en choisissant un type de cordage et une tension qui convient à votre style de jeu et à votre morphologie (force et puissance). Après avoir utilisé un cordage pendant de nombreuses séances de jeu, si vous sentez que vous contrôlez de moins en moins bien vos frappes de balle, envisagez de faire recorder votre raquette. Demandez des conseils à la personne qui corde votre raquette pour déterminer le type et la tension de cordage qui vous conviennent le mieux.",
  remote_video_url: video,
  remote_photo_url: photo,
  category: service,
  user: arthur
  )

# Notion Service 4-------------------------------------------------------------------:
video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088445/Coup_droit_muuzjj.mp4"
photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567435886/service/fl2f7lzzxy8scbklayqb.jpg"
service2 = Notion.create!(
  name: "Choisir le bon service",
  description: "Choisissez une raquette de tennis qui convient à une personne de votre âge et de votre morphologie. Optez pour une raquette légère et ajoutez éventuellement de la bande de plomb en tête pour obtenir un meilleur contrôle. Les raquettes de tennis ont des surfaces de tamis qui sont comprises entre 630 et 645 cm2 pour des poids qui se situent entre 270 et 370 g. Il est toujours préférable de faire corder sa raquette (plutôt que de l'acheter avec un cordage déjà installé) en choisissant un type de cordage et une tension qui convient à votre style de jeu et à votre morphologie (force et puissance). Après avoir utilisé un cordage pendant de nombreuses séances de jeu, si vous sentez que vous contrôlez de moins en moins bien vos frappes de balle, envisagez de faire recorder votre raquette. Demandez des conseils à la personne qui corde votre raquette pour déterminer le type et la tension de cordage qui vous conviennent le mieux.",
  remote_video_url: video,
  remote_photo_url: photo,
  category: service,
  user: arthur
  )

# Notion Service 5-------------------------------------------------------------------:
video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088445/Coup_droit_muuzjj.mp4"
photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567438443/service/Serena_Williams_-_Roland-Garros_2012_-_006_advrml.jpg"
service5 = Notion.create!(
  name: "Imiter le service de Serena",
  description: "Choisissez une raquette de tennis qui convient à une personne de votre âge et de votre morphologie. Optez pour une raquette légère et ajoutez éventuellement de la bande de plomb en tête pour obtenir un meilleur contrôle. Les raquettes de tennis ont des surfaces de tamis qui sont comprises entre 630 et 645 cm2 pour des poids qui se situent entre 270 et 370 g. Il est toujours préférable de faire corder sa raquette (plutôt que de l'acheter avec un cordage déjà installé) en choisissant un type de cordage et une tension qui convient à votre style de jeu et à votre morphologie (force et puissance). Après avoir utilisé un cordage pendant de nombreuses séances de jeu, si vous sentez que vous contrôlez de moins en moins bien vos frappes de balle, envisagez de faire recorder votre raquette. Demandez des conseils à la personne qui corde votre raquette pour déterminer le type et la tension de cordage qui vous conviennent le mieux.",
  remote_video_url: video,
  remote_photo_url: photo,
  category: service,
  user: arthur
  )

# Notion Service 6-------------------------------------------------------------------:
video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088445/Coup_droit_muuzjj.mp4"
photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567071418/maxresdefault_gyhvch.jpg"
service6 = Notion.create!(
  name: "Vous souhaitez un service à la Roger ?",
  description: "Choisissez une raquette de tennis qui convient à une personne de votre âge et de votre morphologie. Optez pour une raquette légère et ajoutez éventuellement de la bande de plomb en tête pour obtenir un meilleur contrôle. Les raquettes de tennis ont des surfaces de tamis qui sont comprises entre 630 et 645 cm2 pour des poids qui se situent entre 270 et 370 g. Il est toujours préférable de faire corder sa raquette (plutôt que de l'acheter avec un cordage déjà installé) en choisissant un type de cordage et une tension qui convient à votre style de jeu et à votre morphologie (force et puissance). Après avoir utilisé un cordage pendant de nombreuses séances de jeu, si vous sentez que vous contrôlez de moins en moins bien vos frappes de balle, envisagez de faire recorder votre raquette. Demandez des conseils à la personne qui corde votre raquette pour déterminer le type et la tension de cordage qui vous conviennent le mieux.",
  remote_video_url: video,
  remote_photo_url: photo,
  category: service,
  user: arthur
  )

# Notion Echauffement1-------------------------------------------------------------------:

photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567436262/%C3%A9chauffement/Capture_d_e%CC%81cran_2019-09-02_a%CC%80_16.57.13_m09xwy.png"
video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088636/Echauffement_px56el.mp4"
mental2 = Notion.create!(
  name: "Comment bien s'échauffer ?",
  category: echauffement,
  remote_photo_url: photo,
  remote_video_url: video,
  description: "Choisissez une raquette de tennis qui convient à une personne de votre âge et de votre morphologie. Optez pour une raquette légère et ajoutez éventuellement de la bande de plomb en tête pour obtenir un meilleur contrôle. Les raquettes de tennis ont des surfaces de tamis qui sont comprises entre 630 et 645 cm2 pour des poids qui se situent entre 270 et 370 g. Il est toujours préférable de faire corder sa raquette (plutôt que de l'acheter avec un cordage déjà installé) en choisissant un type de cordage et une tension qui convient à votre style de jeu et à votre morphologie (force et puissance). Après avoir utilisé un cordage pendant de nombreuses séances de jeu, si vous sentez que vous contrôlez de moins en moins bien vos frappes de balle, envisagez de faire recorder votre raquette. Demandez des conseils à la personne qui corde votre raquette pour déterminer le type et la tension de cordage qui vous conviennent le mieux.",
  user: roger
  )

# Notion Echauffement2-------------------------------------------------------------------:

photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567440014/%C3%A9chauffement/TELEMMGLPICT000165567670_trans_2B_2B_SwnslUQkpHNk4h-1lw-owRbewe5KDHg_-9Be7aWaMw_zfdoph.jpg"
video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088636/Echauffement_px56el.mp4"
mental2 = Notion.create!(
  name: "Perfectionner son échauffement comme Alep",
  category: echauffement,
  remote_photo_url: photo,
  remote_video_url: video,
  description: "Choisissez une raquette de tennis qui convient à une personne de votre âge et de votre morphologie. Optez pour une raquette légère et ajoutez éventuellement de la bande de plomb en tête pour obtenir un meilleur contrôle. Les raquettes de tennis ont des surfaces de tamis qui sont comprises entre 630 et 645 cm2 pour des poids qui se situent entre 270 et 370 g. Il est toujours préférable de faire corder sa raquette (plutôt que de l'acheter avec un cordage déjà installé) en choisissant un type de cordage et une tension qui convient à votre style de jeu et à votre morphologie (force et puissance). Après avoir utilisé un cordage pendant de nombreuses séances de jeu, si vous sentez que vous contrôlez de moins en moins bien vos frappes de balle, envisagez de faire recorder votre raquette. Demandez des conseils à la personne qui corde votre raquette pour déterminer le type et la tension de cordage qui vous conviennent le mieux.",
  user: roger
  )

# Notion Echauffement3-------------------------------------------------------------------:

photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567436161/%C3%A9chauffement/maxresdefault_xsc15f.jpg"
video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088636/Echauffement_px56el.mp4"
mental2 = Notion.create!(
  name: "S'échauffer comme Roger Federer est-ce possible ?",
  category: echauffement,
  remote_photo_url: photo,
  remote_video_url: video,
  description: "Choisissez une raquette de tennis qui convient à une personne de votre âge et de votre morphologie. Optez pour une raquette légère et ajoutez éventuellement de la bande de plomb en tête pour obtenir un meilleur contrôle. Les raquettes de tennis ont des surfaces de tamis qui sont comprises entre 630 et 645 cm2 pour des poids qui se situent entre 270 et 370 g. Il est toujours préférable de faire corder sa raquette (plutôt que de l'acheter avec un cordage déjà installé) en choisissant un type de cordage et une tension qui convient à votre style de jeu et à votre morphologie (force et puissance). Après avoir utilisé un cordage pendant de nombreuses séances de jeu, si vous sentez que vous contrôlez de moins en moins bien vos frappes de balle, envisagez de faire recorder votre raquette. Demandez des conseils à la personne qui corde votre raquette pour déterminer le type et la tension de cordage qui vous conviennent le mieux.",
  user: roger
  )

# Notion Echauffement4-------------------------------------------------------------------:

photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567436186/%C3%A9chauffement/sp12-novak-djokovic_knxwef.jpg"
video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088636/Echauffement_px56el.mp4"
mental2 = Notion.create!(
  name: "Le top 5 des échauffements des PRO",
  category: echauffement,
  remote_photo_url: photo,
  remote_video_url: video,
  description: "Choisissez une raquette de tennis qui convient à une personne de votre âge et de votre morphologie. Optez pour une raquette légère et ajoutez éventuellement de la bande de plomb en tête pour obtenir un meilleur contrôle. Les raquettes de tennis ont des surfaces de tamis qui sont comprises entre 630 et 645 cm2 pour des poids qui se situent entre 270 et 370 g. Il est toujours préférable de faire corder sa raquette (plutôt que de l'acheter avec un cordage déjà installé) en choisissant un type de cordage et une tension qui convient à votre style de jeu et à votre morphologie (force et puissance). Après avoir utilisé un cordage pendant de nombreuses séances de jeu, si vous sentez que vous contrôlez de moins en moins bien vos frappes de balle, envisagez de faire recorder votre raquette. Demandez des conseils à la personne qui corde votre raquette pour déterminer le type et la tension de cordage qui vous conviennent le mieux.",
  user: roger
  )

# Notion Echauffement5-------------------------------------------------------------------:

photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567439973/%C3%A9chauffement/maxresdefault_r9n2xf.jpg"
video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088636/Echauffement_px56el.mp4"
mental2 = Notion.create!(
  name: "Un échauffement à la Russe comme Sharapova",
  category: echauffement,
  remote_photo_url: photo,
  remote_video_url: video,
  description: "Choisissez une raquette de tennis qui convient à une personne de votre âge et de votre morphologie. Optez pour une raquette légère et ajoutez éventuellement de la bande de plomb en tête pour obtenir un meilleur contrôle. Les raquettes de tennis ont des surfaces de tamis qui sont comprises entre 630 et 645 cm2 pour des poids qui se situent entre 270 et 370 g. Il est toujours préférable de faire corder sa raquette (plutôt que de l'acheter avec un cordage déjà installé) en choisissant un type de cordage et une tension qui convient à votre style de jeu et à votre morphologie (force et puissance). Après avoir utilisé un cordage pendant de nombreuses séances de jeu, si vous sentez que vous contrôlez de moins en moins bien vos frappes de balle, envisagez de faire recorder votre raquette. Demandez des conseils à la personne qui corde votre raquette pour déterminer le type et la tension de cordage qui vous conviennent le mieux.",
  user: roger
  )

# Notion Echauffement6-------------------------------------------------------------------:

photo = "https://res.cloudinary.com/dw4g4hgu2/image/upload/v1567436212/%C3%A9chauffement/maxresdefault_drzeix.jpg"
video = "https://res.cloudinary.com/dw4g4hgu2/video/upload/v1567088636/Echauffement_px56el.mp4"
mental2 = Notion.create!(
  name: "Le secret d'un échauffement actif !",
  category: echauffement,
  remote_photo_url: photo,
  remote_video_url: video,
  description: "Choisissez une raquette de tennis qui convient à une personne de votre âge et de votre morphologie. Optez pour une raquette légère et ajoutez éventuellement de la bande de plomb en tête pour obtenir un meilleur contrôle. Les raquettes de tennis ont des surfaces de tamis qui sont comprises entre 630 et 645 cm2 pour des poids qui se situent entre 270 et 370 g. Il est toujours préférable de faire corder sa raquette (plutôt que de l'acheter avec un cordage déjà installé) en choisissant un type de cordage et une tension qui convient à votre style de jeu et à votre morphologie (force et puissance). Après avoir utilisé un cordage pendant de nombreuses séances de jeu, si vous sentez que vous contrôlez de moins en moins bien vos frappes de balle, envisagez de faire recorder votre raquette. Demandez des conseils à la personne qui corde votre raquette pour déterminer le type et la tension de cordage qui vous conviennent le mieux.",
  user: roger
  )

# Lesson:

lesson1 = Lesson.new(teacher: arthur, student: hector, notion: revers2, date: DateTime.new(2019,9,2,8))
lesson1.save!

lesson2 = Lesson.new(teacher: arthur, student: elisabeth, notion: revers2, date: DateTime.new(2019,9,03,14), status:"confirmed", comment: "Super Elisabeth,
Bravo pour tes premières séances sur le revers, je pense que tu es prêt pour ton prochain tournoi.
La prochaine fois je te montrerai comment améliorer ton coup droit")
lesson2.save!

lesson3 = Lesson.new(teacher: arthur, student: novak, notion: mental2, date: DateTime.new(2019,9,03,14), status:"confirmed")
lesson3.save!

Review.create!(lesson: lesson1, rating: 5, comment: "Arthur est un excellent professeur: sympathique et de très bon conseil, idéal pour progresser rapidement!")
Review.create!(lesson: lesson3, rating: 5, comment: "Premier cours ce weekend avec Arthur, je recommande vivement. Un peu stressée car complètement débutante, mais grâce à sa gentillesse et sa patience vous vous sentez rapidement à l'aise et il vous donne envie de persévérer.")

puts "Seed done!"




