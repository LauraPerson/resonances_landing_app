class ClientsController < ApplicationController
    def index
      @clients = policy_scope(Client.all)
    end
  
    def show
      @client = Client.find(params[:id])
      authorize @client
    end
  
    def new 
      #current_user.super_admin?
      @client = Client.new
      authorize @client

    end 
  
    def create
      @client = Client.new(client_params)
      @client.save 
      authorize @client

      flash.alert = "Nouveau client ajouté"
      redirect_to clients_path
    end
  
    def edit
      @client = Client.find(params[:id])
      authorize @client

    end
  
    def update
      @client = Client.find(params[:id])
      @client.update(client_params)
      authorize @client
      redirect_to clients_path
    end
  
    def destroy
      @client = Client.find(params[:id])
      @client.destroy
      authorize @client
      flash.alert = "Client supprimé"
      redirect_to clients_path
    end
  
    private 
  
    def client_params
      params.require(:client).permit(:name, :photo)
    end
    
end
