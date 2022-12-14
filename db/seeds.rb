# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

############################ ALL INITIALIZATION ########################

DrivingCourse.destroy_all
Promo.destroy_all

######################### DRIVING COURSE CREATION ######################

DrivingCourse.create(
    title: "STAGE DE PILOTAGE  INNES IRELAND (DEMI-JOURNÉE)",
    description: "Notre stage de pilotage d’introduction au pilotage en monoplace permet de bien profiter des 
    sensations procurées par ces « cigares à quatre roues » sur un circuit mythique. Adaptée à tous, ce stage 
    de pilotage vous fera entrer dans l’univers du sport automobile historique, au circuit de Charade.",
    date: '2023-04-15 08:00',
    quantity: 18,
    price: 990,
    img_url: "driving_courses/innes_ireland.jpg",
    product_type: 0,
)

DrivingCourse.create(
    title: "STAGE DE PILOTAGE JIM CLARK (JOURNÉE COMPLÈTE)",
    description: "S’adressant à ceux désirant prolonger l’expérience au-delà du stage de pilotage Innes Ireland, 
    pour tirer le meilleur de nos monoplaces et du circuit de Charade tout en se concentrant sur les techniques de
    pilotage lors d’une journée complète. Notre best-seller !",
    date: '2023-04-15 08:00',
    quantity: 18,
    price: 1850,
    img_url: "driving_courses/jim_clark.jpg",
    product_type: 0,
)

DrivingCourse.create(
    title: "STAGE DE PILOTAGE CHRIS AMON (JOURNÉE COACHING AVANCÉ)",
    description: "Notre stage de pilotage d’une journée le plus avancé. 
    Débriefings techniques à l’aide de vidéos GoPro embarquées, incluant données 
    AIM enregistrées ainsi que l’analyse des chronos en piste. Une expérience de 
    pilotage 100% plaisir au volant de nos monoplaces, au circuit de Charade.",
    date: '2023-05-12 08:00',
    quantity: 12,
    price: 2590,
    img_url: "driving_courses/chris_amon.jpg",
    product_type: 0,
)


DrivingCourse.create(
    title: "STAGE DE PILOTAGE JACKIE STEWART (PILOTAGE PERFORMANCE : 2 JOURS )",
    description: "Stage de pilotage résultant de la combinaison des programmes Chris Amon et Jim Clark sur 2 jours. 
    Avec plus de 5 heures de pilotage en monoplace sur le circuit de Charade  sur deux jours, vous pourrez approfondir 
    vos techniques de pilotage grâce à notre expérience en tant qu’écurie de compétition. Notre stage de pilotage en monoplace le plus complet.",
    date: '2023-06-23 08:00',
    quantity: 12,
    price: 4290,
    img_url: "driving_courses/jackie_stewart.jpg",
    product_type: 0,
)

DrivingCourse.create(
    title: "ÉVÉNEMENT SPECIAL : AUTO HEROES DAYS (JOURNÉE COMPLÈTE)",
    description: "Un événement unique Les 29 et 30 juillet 2023. Sur la base de notre expérience Jim Clark, vous passerez deux heures au volant. 
    Le matin, vous vous familiariserez avec la monoplace à la reconnaissance du circuit. 
    L’après-midi, vous mettrez en pratique les conseils de notre équipe d’instructeurs pilotes pour perfectionner votre technique.
    Votre journée se terminera autour d’un apéritif, avec la remise du pack cadeau exclusif à cet événement.",
    date: '2023-07-29 08:00',
    quantity: 16,
    price: 1990,
    img_url: "driving_courses/special_event_auto_heroes_days.jpg",
    product_type: 0,
)


DrivingCourse.create(
    title: "BAPTÊME PASSAGER - CIRCUIT DE CHARADE :SPORT-PROTO",
    description: "Probablement la meilleure façon de découvrir le circuit de Charade en 
    passager avec la seule expérience de baptême historique en son genre. Entrez dans son histoire 
    en découvrant ce tracé mythique aux côtés d’un pilote professionnel qui saura exploiter tout le potentiel 
    d’un véritable sport-protoproduct_type de 1966 : une Crosslé 9S de 240 ch. Disponible en bon cadeau, offrez cette expérience aujourd’hui.",
    date: '2023-04-15 08:00',
    quantity: 7,
    price: 150,
    img_url: "driving_courses/bapteme.jpg",
    product_type: 0,
)

DrivingCourse.create(
    title: "Pack Assurance Journée",
    description: "Réduction de la franchise casse à 3 000€ au lieu de 8 000€.",
    price: 150,
    img_url: "options/pack_assurance.jpg",
    product_type: 1,
)

DrivingCourse.create(
    title: "Pack Accompagnant Journée Complète",
    description: "Accès à l’enceinte privée du circuit, libre accès au lounge en bord de piste , ambiance ( Films automobile d’époque diffusés sur un écran, magazines et musique 60’s), visite de la tour de contrôle avec vue sur l’ensemble des caméras auprès de la direction de piste, mise à disposition de berlines avec chauffeurs pour visiter les environs du circuit et admirer les monoplaces en piste (accès aux voies de sécurités, vues sur différents virages, commentaires des instructeurs en direct…), ensemble des repas compris, et open bar soft tout au long de la journée.",
    price: 70,
    img_url: "options/pack_accompagnant.jpg",
    product_type: 1,
)

DrivingCourse.create(
    title: "Pack Co-Pilote : Jour du Stage",
    description: "Accès à l’enceinte privée du circuit, libre accès au lounge en bord de piste , ambiance ( Films automobile d’époque diffusés sur un écran, magazines et musique 60’s), visite de la tour de contrôle avec vue sur l’ensemble des caméras auprès de la direction de piste, mise à disposition de berlines avec chauffeurs pour visiter les environs du circuit et admirer les monoplaces en piste (accès aux voies de sécurités, vues sur différents virages, commentaires des instructeurs en direct…), ensemble des repas compris, et open bar soft tout au long de la journée.",
    price: 180,
    img_url: "options/pack_copilote.jpg",
    product_type: 1,
)
############################## DISCOUNTS CREATION ##########################

Promo.create(
    name: "RACING10",
    discount: 0.9,
)

Promo.create(
    name: "RACING20",
    discount: 0.8,
)

Promo.create(
    name: "THP-SECRET-PROMO",
    discount: 0.1,
)