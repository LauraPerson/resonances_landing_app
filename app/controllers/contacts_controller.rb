class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.alert = "Message envoyé!"
      redirect_to root_path
    else
      flash.alert = "Votre message n'a pas pu être envoyé. Vous pouvez contacter Résonances à l'adresse abo@resonances.group"
      render :new
    end
  end
end
