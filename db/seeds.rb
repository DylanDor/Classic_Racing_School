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
Option.destroy_all

######################### DRIVING COURSE CREATION ######################

DrivingCourse.create(
    title: "
    STAGE DE PILOTAGE  INNES IRELAND (DEMI-JOURNÉE)",
    description: "Notre stage de pilotage d’introduction au pilotage en monoplace permet de bien profiter des 
    sensations procurées par ces « cigares à quatre roues » sur un circuit mythique. Adaptée à tous, ce stage 
    de pilotage vous fera entrer dans l’univers du sport automobile historique, au circuit de Charade.
    8h00 – 14h00 ou 12h00 – 18h00",
    date: '2023-04-15 08:00',
    quantity: 18,
    price: 990,
    img_url: "stage-pilotage-monoplace1.jpg",
)

DrivingCourse.create(
    title: "STAGE DE PILOTAGE JIM CLARK (JOURNÉE COMPLÈTE)",
    description: "S’adressant à ceux désirant prolonger l’expérience au-delà du stage de pilotage Innes Ireland, 
    pour tirer le meilleur de nos monoplaces et du circuit de Charade tout en se concentrant sur les techniques de
    pilotage lors d’une journée complète. Notre best-seller !
    8h00 – 18h00",
    date: '2023-04-15 08:00',
    quantity: 18,
    price: 1850,
    img_url: "stage-pilotage-monoplace2.jpg",
)

DrivingCourse.create(
    title: "Stage de Pilotage Chris Amon : Journée Coaching Avancé",
    description: "Notre stage de pilotage d’une journée le plus avancé. 
    Débriefings techniques à l’aide de vidéos GoPro embarquées, incluant données 
    AIM enregistrées ainsi que l’analyse des chronos en piste. Une expérience de 
    pilotage 100% plaisir au volant de nos monoplaces, au circuit de Charade.",
    date: '2023-05-12 08:00',
    quantity: 12,
    price: 2590,
    img_url: "stage-pilotage-monoplace3.jpg",
)


DrivingCourse.create(
    title: "STAGE DE PILOTAGE JACKIE STEWART (PILOTAGE PERFORMANCE : 2 JOURS )",
    description: "Stage de pilotage résultant de la combinaison des programmes Chris Amon et Jim Clark sur 2 jours. 
    Avec plus de 5 heures de pilotage en monoplace sur le circuit de Charade  sur deux jours, vous pourrez approfondir 
    vos techniques de pilotage grâce à notre expérience en tant qu’écurie de compétition. Notre stage de pilotage en monoplace le plus complet.",
    date: '2023-06-23 08:00',
    quantity: 12,
    price: 4290,
    img_url: "stage-pilotage-monoplace4.jpg",
)

DrivingCourse.create(
    title: "HISTORIC RACING EXPERIENCE (PILOTAGE PERFORMANCE : 2 JOURS )",
    description: "Combinant les savoir-faire respectifs de Classic Racing School et HYRacing dans le monde 
    du sport automobile classic, avec le cadre exceptionnel et ensoleillé du circuit d’Almeria en Espagne en 
    saison hivernale, ce produit commun vous permettra de vivre un week-end inoubliable plongé dans l’âge d’or du sport automobile, 
    de la monoplace ancienne jusqu’aux plus iconiques voitures du Mans.
    Cette expérience inédite se déroulera les 8 & 9 Décembre prochains sur le circuit d’Almeria en Espagne, avec des places limitées à 8 personnes par jour.",
    date: '2023-04-15 08:00',
    quantity: 7,
    price: 9300,
    img_url: "stage-pilotage-monoplace1.jpg",
)


DrivingCourse.create(
    title: "BAPTÊME PASSAGER - CIRCUIT DE CHARADE :SPORT-PROTOTYPE",
    description: "Probablement la meilleure façon de découvrir le circuit de Charade en 
    passager avec la seule expérience de baptême historique en son genre. Entrez dans son histoire 
    en découvrant ce tracé mythique aux côtés d’un pilote professionnel qui saura exploiter tout le potentiel 
    d’un véritable sport-prototype de 1966 : une Crosslé 9S de 240 ch. Disponible en bon cadeau, offrez cette expérience aujourd’hui.",
    date: '2023-04-15 08:00',
    quantity: 7,
    price: 150,
    img_url: "stage-pilotage-monoplace5.jpg",
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

############################## OPTIONS CREATION ###########################

Option.create(
    title: "Pack Assurance Journée",
    description: "Réduction de la franchise casse à 3 000€ au lieu de 8 000€.",
    price: 150,
    img_url: "stage-pilotage-monoplace.jpg",
)

Option.create(
    title: "Pack Accompagnant Journée Complète",
    description: "Accès à l’enceinte privée du circuit, libre accès au lounge en bord de piste , ambiance ( Films automobile d’époque diffusés sur un écran, magazines et musique 60’s), visite de la tour de contrôle avec vue sur l’ensemble des caméras auprès de la direction de piste, mise à disposition de berlines avec chauffeurs pour visiter les environs du circuit et admirer les monoplaces en piste (accès aux voies de sécurités, vues sur différents virages, commentaires des instructeurs en direct…), ensemble des repas compris, et open bar soft tout au long de la journée.",
    price: 70,
    img_url: "stage-pilotage-monoplace.jpg",
)

Option.create(
    title: "Pack Co-Pilote : Jour du Stage",
    description: "Accès à l’enceinte privée du circuit, libre accès au lounge en bord de piste , ambiance ( Films automobile d’époque diffusés sur un écran, magazines et musique 60’s), visite de la tour de contrôle avec vue sur l’ensemble des caméras auprès de la direction de piste, mise à disposition de berlines avec chauffeurs pour visiter les environs du circuit et admirer les monoplaces en piste (accès aux voies de sécurités, vues sur différents virages, commentaires des instructeurs en direct…), ensemble des repas compris, et open bar soft tout au long de la journée.",
    price: 180,
    img_url: "stage-pilotage-monoplace.jpg",
)