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
    title: "Stage de Pilotage Innes Ireland : Demi-Journée",
    description: "Ce stage de pilotage tire son nom du pilote ayant remporté la première course de l’histoire du circuit de Charade en 1958 : Innes Ireland.
    Le stage Innes Ireland est un stage découverte adapté à tous, vous invitant à entrer dans l’univers du sport automobile historique avec 60 minutes passées au volant des monoplaces lors de 3 sessions sur un tracé mythique, faisant partie du patrimoine des circuits mondiaux. 
    
    L’encadrement est adapté au niveau de chacun, avec des débriefings personnalisés entre chaque session de roulage en piste suite aux notes prises par notre corps d’instructeurs. Un accompagnement premium agrémenté d’une ambiance vintage très familiale.
    
    Jusqu’à 18 pilotes par séance.
    
    8h00 – 14h00 ou 12h00 – 18h00",
    date: '2023-04-15 08:00',
    quantity: 18,
    price: 990,
)

DrivingCourse.create(
    title: "Stage de Pilotage Jim Clark : Journée Complète",
    description: "Ce stage de pilotage est un hommage au pilote le plus populaire des années 60, qui a remporté la première course de Formule 1 du Grand Prix de France à Charade en 1965 sur Lotus : Jim Clark.
    Un stage très complet, totalisant 2 heures en piste, au cours duquel vous pourrez dans un premier temps découvrir certaines techniques de pilotage le matin avant de les approfondir sur l’après-midi. L’objectif est de vous amener à prendre un maximum de plaisir au volant de nos monoplaces sur ce tracé mythique.
    
    L’encadrement est adapté au niveau de chacun, avec des débriefings personnalisés entre chaque session de roulage en piste suite aux notes prises par notre corps d’instructeurs. Un accompagnement premium agrémenté d’une ambiance vintage très familiale.

    Jusqu’à 18 pilotes par séance.
    
    8h00 – 18h00",
    date: '2023-04-15 08:00',
    quantity: 18,
    price: 1850,
)

DrivingCourse.create(
    title: "Stage de Pilotage Chris Amon : Journée Coaching Avancé",
    description: "En 1972, Chris Amon établit le record ultime du tour à Charade lors du dernier GP de France F1 s’étant déroulé sur cette piste. Son temps ne sera jamais égalé. Ce programme spécial en son nom propose l’expérience la plus poussée que nous pouvons vous offrir sur une journée complète, avec le choix entre le Circuit de Charade et le Circuit de Nogaro.
    Avec 3 heures en piste au Circuit de Charade (ou 2h30 au Circuit de Nogaro) vous serez amenés à progressez grâce à des outils et une pédagogie spécialement dédiés à ce stage de pilotage. Bénéficiant d’un coach par binôme, vous aurez l’opportunité de progresser d’une session à une autre grâce à l’analyse de vos vidéos et chronos embarqués, tout en travaillant certaines techniques propres au pilotage d’une monoplace de course historique.
    
    Un accompagnement premium 100% personnalisé, agrémenté d’une ambiance vintage très familiale.
    
    Jusqu’à 12 pilotes par séance.
    
    Programme : 8h00 – 18h00",
    date: '2023-05-12 08:00',
    quantity: 12,
    price: 2590,
)

DrivingCourse.create(
    title: "Stage de Pilotage Jackie Stewart : Coaching Avancé 2-jours",
    description: "Stage de pilotage résultant de la combinaison des nos programmes Chris Amon et Jim Clark sur 2 jours.
    Avec plus de 5 heures de roulage en piste, vous vivrez non seulement une des meilleures expériences de pilotage en monoplace historique au volant de nos Crosslé 90F, mais c’est avant tout votre technique de pilotage que vous pourrez approfondir grâce à notre encadrement personnalisé associé à notre expérience en tant qu’écurie de compétition, que vous intégrerez comme pilote durant l’équivalent d’un week-end complet. La première journée de vendredi vous permettra d’évoluer en comité réduit.
    
    Avec un coach professionnel par binôme de pilote, vous bénéficierez d’un debrief précis entre chaque session, de l’analyse de vos vidéos embarquées et de vos chronos en piste, le tout dans le but d’améliorer votre performance. La seconde journée du samedi vous permettra de mettre en application les acquis de la veille, sur un format de roulage plus libre avec 6 sessions supplémentaires, partagées avec d’autres pilotes du stage Jim Clark.
    
    Limité à 12 pilotes sur le vendredi et 18 sur le samedi (pilotes du stage Jim Clark inclus).
    Jour 1: 08h00 – 19h00 & Jour 2: 08h00 – 18h00",
    date: '2023-06-23 08:00',
    quantity: 12,
    price: 4290,
)

DrivingCourse.create(
    title: "Expérience Baptême sport-prototype",
    description: "Probablement la meilleure façon de découvrir le circuit de Charade en passager avec la seule expérience de baptême historique en son genre. Entrez dans son histoire en découvrant ce tracé mythique aux côtés d’un pilote professionnel qui saura exploiter tout le potentiel d’un véritable sport-prototype de 1966 : une Crosslé 9S. Produite à 73 exemplaires seulement, le châssis proposé est le dernier sorti d’usine.

    Entrez dans son histoire en découvrant ce tracé mythique aux côtés d’un pilote professionnel qui saura exploiter tout le potentiel d’un véritable sport-prototype de 1966 : la Crosslé 9S, une vraie voiture de course historique avec 240 chevaux et 550 kgs !
    
    Cette 'expérience en voiture de course est le cadeau parfait pour un passionné de sensations fortes, réservez maintenant comme bon cadeau, valable pendant 12 mois !",
    date: '2023-04-15 08:00',
    quantity: 7,
    price: 150,
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
)

Option.create(
    title: "Pack Accompagnant Journée Complète",
    description: "Accès à l’enceinte privée du circuit, libre accès au lounge en bord de piste , ambiance ( Films automobile d’époque diffusés sur un écran, magazines et musique 60’s), visite de la tour de contrôle avec vue sur l’ensemble des caméras auprès de la direction de piste, mise à disposition de berlines avec chauffeurs pour visiter les environs du circuit et admirer les monoplaces en piste (accès aux voies de sécurités, vues sur différents virages, commentaires des instructeurs en direct…), ensemble des repas compris, et open bar soft tout au long de la journée.",
    price: 70,
)

Option.create(
    title: "Pack Co-Pilote : Jour du Stage",
    description: "Accès à l’enceinte privée du circuit, libre accès au lounge en bord de piste , ambiance ( Films automobile d’époque diffusés sur un écran, magazines et musique 60’s), visite de la tour de contrôle avec vue sur l’ensemble des caméras auprès de la direction de piste, mise à disposition de berlines avec chauffeurs pour visiter les environs du circuit et admirer les monoplaces en piste (accès aux voies de sécurités, vues sur différents virages, commentaires des instructeurs en direct…), ensemble des repas compris, et open bar soft tout au long de la journée.",
    price: 180,
)