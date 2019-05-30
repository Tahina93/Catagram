class UserMailer < ApplicationMailer
  default from: ENV['MAIL_JET_DEFAULT_FROM']

  def welcome_email(user)

    #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
    @user = user
    puts "*"*100
    puts @user
    puts "*"*100
    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = root_url

    # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
    mail(to: @user.email, subject: 'Bienvenue chez nous !')
  end

  def new_order_email(order)
    @order = order
    @current_user = @order.user
    @cart = @current_user.cart

    puts "*******************************************"
    puts "*******************************************"
    puts "*******************************************"
    puts @order
    puts @current_user.email
    puts @cart.items
    puts "*******************************************"
    puts "*******************************************"
    puts "*******************************************"


    mail(to: @current_user.email, subject: 'Confirmation de commande mignonne !')
  end
end
