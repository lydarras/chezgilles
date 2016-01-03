class CommandesController < ApplicationController
	#before_action :set_commande

	def index
		@commandes = Commande.all
	end

	def show
	end

	def create
		@commande = Commande.new(client_id: current_client.id,datecom: Time.now.strftime("%d %B %Y"),etat: "En cours")
		if @commande.save
			flash[:notice] = "Commande ajouté"
   			redirect_to commandes_path
  		else
   			render produits_path
  		end
	end

end
