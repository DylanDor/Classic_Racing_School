class AdminMailer < ApplicationMailer
    default from: 'Reservation@classicracinggroup.com'

    def order_confirmation_admin (order)
        #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
        @order = order
      
            
        #on définit une variable @url qu'on utilisera dans la view d’e-mail
        @url_signin  = 'https://classic-racing-school.fly.dev/' 
    
        # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
        mail(to: 'classicracinggroup@gmail.com', subject: 'Une nouvelle commande sur votre site') 
          end
end
