class UserMailer < ApplicationMailer
    default from: 'classicracinggroup@gmail.com'

    def welcome_email(user)
      #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
      @user = user 

      #on définit une variable @url qu'on utilisera dans la view d’e-mail
      @url_signin  = 'https://classic-racing-school.fly.dev/users/sign_in' 

      # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
      mail(to: @user.email, subject: 'Bienvenue chez nous !') 
    end

    def order_confirmation_user (order)
    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @order = order 

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url_signin  = 'https://classic-racing-school.fly.dev/' 

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @order.user.email, subject: 'Merci pour votre commande') 
      end
  end